#!/usr/bin/env bash

function check_database () {
     sudo netstat -lpnt | grep -i mysql > /dev/null 2>&1
}

function report () {
     check_database
     if [[ $? = 0 ]]; then
          cout info "MySQL database found!"
     else
          cout warning "MySQL database not found!"
     fi
}
