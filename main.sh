#!/usr/bin/env bash

for SOURCES in $(find ./scripts -type f -name "*.sh"); do
     source $SOURCES
done;

for CONFIG in $(find ./config -type f -name "*.cfg"); do
     source $CONFIG
done;

check_cfg
checkroot
report_detect_mysql
check_login
num_of_databases
check_backup_folder
