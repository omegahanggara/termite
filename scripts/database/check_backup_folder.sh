#!/usr/bin/env bash

function check_backup_folder_helper () {
     ask_to_mkdir_backup_folder="true"
     while [[ $ask_to_mkdir_backup_folder == "true" ]]; do
          cin info "Would you like to create $PATH_BACKUP? (Y/n) : "
          read answer_to_mkdir_backup_folder
          if [[ $answer_to_mkdir_backup_folder == *[Yy]* || $answer_to_mkdir_backup_folder == "" ]]; then
               ask_to_mkdir_backup_folder="false"
               cout action "Create new directory on $PATH_BACKUP..."
               mkdir -p $PATH_BACKUP
               cout info "Done"
          elif [[ $answer_to_mkdir_backup_folder == *[Nn]* ]]; then
               ask_to_mkdir_backup_folder="false"
               cout error "Please create folder on $PATH_BACKUP first, then run this script again!"
               exit 1
          else
               cout error "Whoops... Typo? Try harder!"
          fi
     done
}

function check_backup_folder () {
     cout info "Your default backup path is $PATH_BACKUP"
     cout action "Checking backup folder on $PATH_BACKUP"
     if [[ -d $PATH_BACKUP ]]; then
          cout info "$PATH_BACKUP is found"
     else
          cout warning "$PATH_BACKUP is not found!!!"
          check_backup_folder_helper
     fi
}
