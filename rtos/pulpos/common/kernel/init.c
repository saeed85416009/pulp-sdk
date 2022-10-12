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


typedef void (*fptr)(void);

static fptr ctor_list[1] __attribute__((section(".ctors.start"))) = { (fptr) -1 };
static fptr dtor_list[1] __attribute__((section(".dtors.start"))) = { (fptr) -1 };


static void pos_init_do_ctors(void)
{
    fptr *fpp;

    for(fpp = ctor_list+1;  *fpp != 0;  ++fpp)
    {
        (**fpp)();
    }
}



static void pos_init_do_dtors(void)
{
    fptr *fpp;
    for(fpp = dtor_list + 1;  *fpp != 0;  ++fpp)
    {
        (**fpp)();
    }
}



void pos_init_start()
{
#if PULP_CHIP_FAMILY == CHIP_GAP
  // Always allow JTAG accesses for now as security is not implemented
  hal_pmu_bypass_set (ARCHI_REG_FIELD_SET (hal_pmu_bypass_get (), 1, 11, 1) );
#endif

// FILE *fp; 
// fp = (FILE *) fopen("fc_use.txt", "r");
// char *out;
// out = fgetc(fp);
// printf("%c",out);
// fclose(fp);

// int fd;
// fd = open("fc_use.txt", O_RDONLY);
// int out = getc(fd);

printf("FC_USE inside pos_init_start \n");
uint32_t core_mask = (1<<8) - 1;
  if (pi_core_id()==hal_is_fc()){
archi_write32(ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(0) + ARCHI_CLUSTER_CTRL_OFFSET, 0x00000001);
archi_write32(ARCHI_CLUSTER_PERIPHERALS_GLOBAL_ADDR(0) + ARCHI_ICACHE_CTRL_OFFSET,0xFFFFFFFF);
archi_write32(plp_ctrl_bootaddr_get(),0x1c008080);
// while(archi_read32(0x10000000)!= 0xc0fec0fe);
while(1);
}
printf("FC_USE -none- inside pos_init_start \n");

printf(" saeed.1: %d\n", pi_core_id());
if(pi_core_id()==0)
{
  printf(" saeed.2: %d\n", pi_core_id());
  archi_write32( ARCHI_SOC_PERIPHERALS_ADDR + ARCHI_APB_SOC_CTRL_OFFSET + APB_SOC_CTRL_FC_FETCH_OFFSET , 0);
  CL_TRACE(POS_LOG_INFO, "Starting runtime initialization\n");
  CL_TRACE(POS_LOG_INFO, "saeed: pos_init_start - core_id=%d\n",pi_core_id());

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
}

}


void pos_init_stop()
{
    // Close IO to flush them
    pos_io_stop();

    /* Call global and static destructors */
    pos_init_do_dtors();
}
