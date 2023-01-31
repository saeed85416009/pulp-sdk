/*
 * Copyright (C) 2019 GreenWaves Technologies
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * Authors: Germain Haugou, GreenWaves Technologies (germain.haugou@greenwaves-technologies.com)
 */

#include "pmsis.h"

#include "io.h"

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

typedef void (*fptr)(void);

static fptr ctor_list[1] __attribute__((section(".ctors.start"))) = {(fptr)-1};
static fptr dtor_list[1] __attribute__((section(".dtors.start"))) = {(fptr)-1};
static int fc_handled = 1;

static void pos_init_do_ctors(void)
{
  fptr *fpp;

  for (fpp = ctor_list + 1; *fpp != 0; ++fpp)
  {
    (**fpp)();
  }
}

static void pos_init_do_dtors(void)
{
  fptr *fpp;
  for (fpp = dtor_list + 1; *fpp != 0; ++fpp)
  {
    (**fpp)();
  }
}

void pos_init_start()
{
  // printf("%d\n", pulp_read32(0x1000fff0));
  pulp_write32(0x1000fff0,1);
#if PULP_CHIP_FAMILY == CHIP_GAP
  // Always allow JTAG accesses for now as security is not implemented
  hal_pmu_bypass_set(ARCHI_REG_FIELD_SET(hal_pmu_bypass_get(), 1, 11, 1));
#endif
  
  // FILE * fp;
  // fp = fopen ("fc_use.txt", "r");
  // fclose(fp);

  // int fd;
  // fd = open("/home/sapo273663/project/pulp-sdk/rtos/pulpos/common/kernel/fc_use.txt", O_RDONLY);
  // int out = getc(fd);
  ///////////////
#if (ARCHI_HAS_FC == 0)
  // printf("FC_USE inside pos_init_start \n");
  pulp_write32(0x1000fff0,2);
  uint32_t core_mask = (1 << 8) - 1;
  if (pi_core_id() == ARCHI_FC_CID)
  // if (0)
  {
    fc_handled = 0;
    pulp_write32(0x1000fff0,3);
    archi_write32(ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(0) + ARCHI_CLUSTER_CTRL_OFFSET, 0x00000001);
    archi_write32(ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(0) + ARCHI_ICACHE_CTRL_OFFSET, 0xFFFFFFFF);
    archi_write32(plp_ctrl_bootaddr_get(), 0x1c008080);
    // while(archi_read32(0x10000000)!= 0xc0fec0fe);
    while (1)
      ;
  }
  //  if (pi_core_id() != hal_is_fc()) 
  if (pi_core_id() == 0) 
  {
    pulp_write32(0x1000ffa0,40);
    // archi_write32(ARCHI_SOC_PERIPHERALS_ADDR + ARCHI_APB_SOC_CTRL_OFFSET + APB_SOC_CTRL_FC_FETCH_OFFSET, 0);

    pos_irq_init();

    // pos_soc_init();

    pos_soc_event_init();

    // Initialize first the memory allocators and the utils so that they are
    // available for constructors, especially to let them declare
    // callbacks
    //__rt_utils_init();
    pos_allocs_init();

    // Scheduler is initialized now to let other modules use it early
    pos_sched_init();

    // Call global and static constructors
    // Each module may do private initializations there
    // pos_init_do_ctors();

    // Now that the system is ready, activate IO
    // pos_io_start();

    // Now now the minimal init are done, we can activate interruptions
    hal_irq_enable();
    //  printf("FC_USE inside pos_init_start %d \n", pi_core_id());
    pulp_write32(0x1000ffa0,50);
  }
#else
  // // printf("FC_USE -none- inside pos_init_start \n");
  //   pulp_write32(0x1000fff0,11);
  //   pos_irq_init();
  //   pulp_write32(0x1000fff0,12);
  //   pos_soc_init();
  //   pulp_write32(0x1000fff0,13);
  //   pos_soc_event_init();
  //   pulp_write32(0x1000fff0,14);
  //   // Initialize first the memory allocators and the utils so that they are
  //   // available for constructors, especially to let them declare
  //   // callbacks
  //   //__rt_utils_init();
  //   pos_allocs_init();
  //   pulp_write32(0x1000fff0,15);
  //   // Scheduler is initialized now to let other modules use it early
  //   pos_sched_init();
  //   pulp_write32(0x1000fff0,16);
  //   // Call global and static constructors
  //   // Each module may do private initializations there
  //   // pos_init_do_ctors();
  //   pulp_write32(0x1000fff0,17);
  //   // Now that the system is ready, activate IO
  //   pos_io_start();
  //   pulp_write32(0x1000fff0,18);
  //   // Now now the minimal init are done, we can activate interruptions
  //   hal_irq_enable();
  //   pulp_write32(0x1000fff0,19);

  // ***************** DMA Test **************************
  INIT_TRACE(POS_LOG_INFO, "Starting runtime initialization\n");

  pos_irq_init();

  pos_soc_init();

  pos_soc_event_init();

  // Initialize first the memory allocators and the utils so that they are
  // available for constructors, especially to let them declare
  // callbacks
  //__rt_utils_init();
  pos_allocs_init();

  // Scheduler is initialized now to let other modules use it early
  pos_sched_init();

  // Call global and static constructors
  // Each module may do private initializations there
  pos_init_do_ctors();

  // Now that the system is ready, activate IO
  pos_io_start();

  // Now now the minimal init are done, we can activate interruptions
  hal_irq_enable();
  printf("normal init mode\n");
  // ***************** DMA Test **************************
#endif
 
}

void pos_init_stop()
{
  // Close IO to flush them
  pos_io_stop();

  /* Call global and static destructors */
  pos_init_do_dtors();
}
