/*
 * Copyright (C) 2017 ETH Zurich, University of Bologna and GreenWaves Technologies
 * All rights reserved.
 *
 * This software may be modified and distributed under the terms
 * of the BSD license.  See the LICENSE file for details.
 *
 * Authors: Germain Haugou, ETH (germain.haugou@iis.ee.ethz.ch)
 */

#include "pmsis.h"
#include "/home/sapo273663/project/pulp-sdk/rtos/pulpos/pulp/drivers/uart/uart.h"

// #define CLUSTER
// #define CONFIG_PE_TASK
// #define CONFIG_PE_TASK
// #define PLIC_BASE 0x0C000000
#define BASE_TEST 0x10000000
int flag_test = 0;

#if defined(CLUSTER)




void pe_entry(void *arg)
{
    printf("Hello from cluster_id: %d, core_id: %d\n", pi_cluster_id(), pi_core_id());
    // int icluster = 10;
    // while (icluster)
    // {
    //     printf("icluster=%d\n", icluster);
    //     icluster--;
    // }
}

void cluster_entry(void *arg)
{
    pi_cl_team_fork((NUM_CORES), pe_entry, 0);
}
#endif
static int test_entry()
{
#if defined(CLUSTER)
    struct pi_device cluster_dev;
    struct pi_cluster_conf cl_conf;
    struct pi_cluster_task cl_task;
    cl_conf.device_type = PI_DEVICE_CLUSTER_TYPE;
    // cl_conf.flags = PI_CLUSTER_FLAGS_TASK_BASED;
    pi_task_t *pi_tt;

    // pi_cluster_conf_task_based_init(&cl_conf);
    pi_cluster_conf_init(&cl_conf); 
    pi_open_from_conf(&cluster_dev, &cl_conf);
    if (pi_cluster_open(&cluster_dev))
    {
        return -1;
    }

    //   pi_cluster_send_task_to_cl(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry, NULL));
    pi_cluster_send_task_to_cl_async(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry, NULL), pi_tt);
    
    pi_cluster_close(&cluster_dev);
#endif
#if !defined(CLUSTER)
    printf("Hello from FC\n");
#endif

    return 0;
}

static void test_kickoff(void *arg)
{
    int ret = test_entry();
    // int i = 10;
    // while (i)
    // {
    //     printf("fc=%d\n", i);
    //     i--;
    // }
    // pmsis_exit(ret);
}


void pe_entry_test(void *arg)
{
    pulp_write32(0x1000fff0,50);
    // printf("Hello from cluster_id: %d, core_id: %d\n", pi_cluster_id(), pi_core_id());
    // printf("hello in cluster %d\n", pi_core_id());
    // int icluster = 10;
    // while (icluster)
    // {
    //     printf("icluster=%d\n", icluster);
    //     icluster--;
    // }
}

void cluster_entry_test()
{
    // printf("cluster_entry_test");
    pulp_write32(0x1000fff0,51);
    pi_cl_team_fork(8, pe_entry_test, 0);
    pulp_write32(0x1000fff0,52);
}

int config_without_FC(void)
{
    pulp_write32(0x1000fff0,21);
    struct pi_device cluster_dev;
    struct pi_cluster_conf cl_conf;
    struct pi_cluster_task cl_task;
    cl_conf.device_type = PI_DEVICE_CLUSTER_TYPE;
    pi_task_t *pi_tt;
    // printf("config_without_FC %d\n", pi_core_id());
    pi_cluster_conf_init(&cl_conf); 
    pi_open_from_conf(&cluster_dev, &cl_conf);
    pulp_write32(0x1000fff0,22);

    if (pi_cluster_open_without_FC_test(&cluster_dev))
    {
        return -1;
    }
    pulp_write32(0x1000fff0,23);
    // pi_cluster_task(&cl_task, cluster_entry_test, NULL);
    // cluster_entry_test();
      pi_cluster_send_task_to_cl(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry_test, NULL));
    // pi_cluster_send_task_to_cl_async(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry_test, NULL), pi_tt);
    // pi_cluster_task(&cl_task, cluster_entry_test, NULL);
    // while(1){
    pulp_write32(0x1000fff0,24);
    // }
    pi_cluster_close(&cluster_dev);
    pulp_write32(0x1000fff0,25);
    return 0;
}

static void test_kickoff_test(void *arg)
{
    int ret = config_without_FC();
    pmsis_exit(ret);
}

PI_L2 int test_array_L2[128];
PI_L1 int test_array_L1[128];

int main()
{
    // #ifndef TEST_USE_DMA
    // for(int i=(16*pi_core_id());i<(16*(pi_core_id()+1));i++)
    //     {
    //         test_array_L2[i] = pi_core_id();
    //     }

    //     for(int i=(16*pi_core_id());i<(16*(pi_core_id()+1));i++)
    //     {
    //         test_array_L1[i] = test_array_L2[i];
    //     }
    // #else
    // #endif

    int baud_rate = 115200;
    int test_freq = 50000000;

    uart_set_cfg(0,(test_freq/baud_rate)>>4);

    pulp_write32(0x10000000,40);
    // int baud_rate = 115200;
    // int test_freq = 50000000;

    // uart_set_cfg(0,(test_freq/baud_rate)>>4);

    int id = pi_core_id();
    // pulp_write32(0x1000000a,255);
    if(id != 0){
        pulp_write32(0x1000000a,id);
    }

    // int core_i = core_id();
    // // pulp_write32(0x1000000c,255);
    // if(core_i != 0){
    //     pulp_write32(0x1000000c,core_i);
    // }
    
    // pulp_write32(0x10000000,31);

    // int b;
    // uint32_t mb_plic_id = 8;
    // pulp_write32(0x1000fff0,2);
    // printf("hello %d\n", pi_core_id());
    // printf("FC = %d\n",hal_is_fc());


    // if(pi_core_id() != ARCHI_FC_CID)
    // {
    //     pulp_write32(0x1000fff0,8);
    //     config_without_FC();
    // }

    pulp_write32(0x10003000,1);
    // pulp_write32(0x10001000,0xfeedfeed);
    pulp_write32(0x1000200a,255);
    pulp_write32(0x1000000c,29);
    pulp_write32(0x1000000d,UART_BASE_ADDR);
    
    printf("main\r\n");
    pulp_write32(0x1000000c,30);
    uart_wait_tx_done();
    pulp_write32(0x1000fff0,255);
    pulp_write32(0x1000000c,31);
    return 0;
    
    //  b=plp_ctrl_bootaddr_get();
    // printf("boot adress = %d",b);
    // return 0;
    // return pmsis_kickoff((void *)test_kickoff_test);
}