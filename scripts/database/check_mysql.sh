#!/usr/bin/env bash

function check_database () {
     sudo netstat -lpnt | grep -i mysql > /dev/null 2>&1
}

function ask_start_mysql () {
     ask_to_start_mysql="true"
     while [[ $ask_to_start_mysql == "true" ]]; do
          cin info "Do you want to start mysql service? (Y/n)"
          read answer_to_start_mysql
          if [[ $anwser_to_start_mysql == *[Yy]* || $answer_to_start_mysql == "" ]]; then
               ask_to_start_mysql="false"
               cout action "Starting mysql service..."
               /etc/init.d/mysql start
               cout info "Done..."
          elif [[ $anwer_to_start_mysql == *[Nn]* ]]; then
               ask_to_start_mysql="false"
               cout warning "Warning!!! No mysql service is found!!!"
               cout action "Exiting!!!"
               exit 1
          else
               cout warning "Invalid answer!!! Try harder!!!"
          fi
     done
}

function report_detect_mysql () {
     cout action "Checking mysql service..."
     sleep 1
     check_database
     if [[ $? = 0 ]]; then
          cout info "MySQL database found!"
     else
          cout warning "MySQL database not found!"
          ask_start_mysql
     fi
}
