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

// #define CLUSTER
// #define CONFIG_PE_TASK
// #define CONFIG_PE_TASK

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
    // printf("Hello from cluster_id: %d, core_id: %d\n", pi_cluster_id(), pi_core_id());
    printf("hello in cluster %d\n", pi_core_id());
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
    pi_cl_team_fork(8, pe_entry_test, 0);
}

int config_without_FC(void)
{
    struct pi_device cluster_dev;
    struct pi_cluster_conf cl_conf;
    struct pi_cluster_task cl_task;
    cl_conf.device_type = PI_DEVICE_CLUSTER_TYPE;
    pi_task_t *pi_tt;
    printf("config_without_FC %d\n", pi_core_id());
    pi_cluster_conf_init(&cl_conf); 
    pi_open_from_conf(&cluster_dev, &cl_conf);

    if (pi_cluster_open_without_FC_test(&cluster_dev))
    {
        return -1;
    }

    // pi_cluster_task(&cl_task, cluster_entry_test, NULL);
    // cluster_entry_test();
      pi_cluster_send_task_to_cl(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry_test, NULL));
    // pi_cluster_send_task_to_cl_async(&cluster_dev, pi_cluster_task(&cl_task, cluster_entry_test, NULL), pi_tt);
    // pi_cluster_task(&cl_task, cluster_entry_test, NULL);
    // while(1){

    // }
    pi_cluster_close(&cluster_dev);

    return 0;
}

static void test_kickoff_test(void *arg)
{
    int ret = config_without_FC();
    pmsis_exit(ret);
}

int main()
{
    // int b;
    printf("hello %d\n", pi_core_id());
    printf("FC = %d\n",hal_is_fc());
    if(pi_core_id() != ARCHI_FC_CID)
    {
        config_without_FC();
        return 0;
    }
    
    //  b=plp_ctrl_bootaddr_get();
    // printf("boot adress = %d",b);
    // return 0;
    // return pmsis_kickoff((void *)test_kickoff_test);
}