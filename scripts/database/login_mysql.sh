#!/usr/bin/env bash

HOST="localhost"

function check_login() {
     cout action "Try to login to mysql as root at localhost..."
     mysql_ver="$(mysql -u root -h $HOST -p -e 'SELECT VERSION();' | tail -1)"
     cout info "Your mysql version is $mysql_ver"
     cout info "Done..."
}
