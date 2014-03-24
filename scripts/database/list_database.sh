#!/usr/bin/env bash

function num_of_databases() {
     cout info "Available databases..."
     sql_cmd "show databases;" | sed "1d"
}
