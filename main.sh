#!/usr/bin/env bash

for SOURCES in $(find ./scripts -type f -name "*.sh"); do
     source $SOURCES
done;

checkroot
report
