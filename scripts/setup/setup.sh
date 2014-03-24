#!/usr/bin/env bash

function check_cfg () {
     cout action "Listing available configuration files on `pwd`/config"
     for FILES in $(find ./config -type f -name "*.cfg"); do
          cout info "Found $FILES"
          cout action "Reading $FILES"
          source $FILES
          cout action "Checking $FILES"
          for var in $(cat $FILES | awk -F "=" '{print $1}'); do
               cout action "Checking $var in $FILES"
               if [[ $(cat $FILES | grep $var | awk -F "=" '{print $2}') == "" ]]; then
                    cout warning "Warning!!! Empty value $var at $FILES"
               else
                    cout info "So far so good..."
                    cout info "Your configuration for $var is $(cat $FILES | grep $var | awk -F "=" '{print $2}')"
               fi
          done
     done;
}
