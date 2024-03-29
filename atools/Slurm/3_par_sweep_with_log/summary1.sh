#! /bin/bash
#

module load atools/slurm

printf "\n\e[0;34mCalling arange with full options. It should list 22 completed items, 8 failed ones and 11 jobs to do.\e[0m\n\n"
arange --data datalog.csv --log weatherlog1.slurm.log* --summary --list_completed --list_failed

printf "\n\e[0;34mAs the .csv file is only used to determine the task id range, we could use the follwing construct as well:\e[0m\n\n"
arange -t $(arange --data datalog.csv) --log weatherlog1.slurm.log* --summary --list_completed --list_failed

printf "\n\e[0;34mChecking the output of arange as it would be used to restart for the incomplete jobs only. This should list 31-41.\e[0m\n\n"
arange --data datalog.csv --log weatherlog1.slurm.log*

printf "\n\e[0;34mChecking the output of arange as it would be used to restart for failed and incomplete jobs.\e[0m\n\n"
arange --data datalog.csv --log weatherlog1.slurm.log* --redo

printf "\n\e[0;34mListing only the completed items which is useful for areduce.\e[0m\n\n"
arange --data datalog.csv --log weatherlog1.slurm.log* --list_completed
