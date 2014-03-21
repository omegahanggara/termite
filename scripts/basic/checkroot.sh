#!/usr/bin/env bash

function checkroot () {
     if [[ $(whoami) != "root" ]]; then
          cout error "You are not ROOT"
          cout action "Exiting"
          exit 1
     else
          cout info "Nice, you run this script as root. Let's go!"
     fi
}
