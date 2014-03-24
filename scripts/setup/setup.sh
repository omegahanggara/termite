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
                    ask_to_setup_var="true"
                    while [[ $ask_to_setup_var == "true" ]]; do
                         cin info "Do you want to setup $var value? (Y/n)"
                         read answer_to_setup_var
                         if [[ $answer_to_setup_var == *[Yy]* || $answer_to_setup_var == "" ]]; then
                              ask_to_setup_var="false"
                              cout action "Setting up $var..."
                              if [[ $var == "PASSWORD" ]]; then
                                   read -s -p "Enter Password: " mypassword
                                   echo
                                   cout info "Your password is $mypassword"
                                   cout action "Adding your password to configuration..."
                                   sed -i "s/PASSWORD=/PASSWORD=$mypassword/g" $FILES
                              fi
                         elif [[ $answer_to_setup_var == *[Nn]* ]]; then
                              ask_to_setup_var="false"
                              cout warning "This value can't be empy!!! Exiting!!!"
                              exit 1
                         else
                              cout warning "Whoops... Typo? Try harder!"
                         fi
                    done
               else
                    cout info "So far so good..."
                    cout info "Your configuration for $var is $(cat $FILES | grep $var | awk -F "=" '{print $2}')"
               fi
          done
     done;
}
