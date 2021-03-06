#!/usr/bin/env bash

function check_login() {
     cout action "Try to login to mysql as `whoami` at $HOST..."
     mysql_ver="$(mysql -u $USER -h $HOST -p$PASSWORD -e 'SELECT VERSION();' | tail -1)"
     cout info "Your mysql version is $mysql_ver"
     cout info "Done..."
}

function sql_cmd() {
     mysql -u $USER -h $HOST -p$PASSWORD -e "$1"
}
