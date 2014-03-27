#!/usr/bin/env bash

function check_backup_folder () {
     cout info "Your default backup path is $PATH_BACKUP"
     cout action "Checking backup folder on $PATH_BACKUP"
     if [[ -d $PATH_BACKUP ]]; then
          cout info "$PATH_BACKUP is found"
     else
          cout warning "$PATH_BACKUP is not found!!!"
          exit 1
     fi
}
