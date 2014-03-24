#!/usr/bin/env bash

for SOURCES in $(find ./scripts -type f -name "*.sh"); do
     source $SOURCES
done;

for SOURCES in $(find ./config -type f -name "*.cfg"); do
     source $SOURCES
done;

checkroot
report_detect_mysql
check_login
