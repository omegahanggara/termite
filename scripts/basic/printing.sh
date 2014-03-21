#!/usr/bin/env bash

function cin() {
     if [ "$1" == "action" ] ; then output="\e[01;32m[>]\e[00m" ; fi
     if [ "$1" == "info" ] ; then output="\e[01;33m[i]\e[00m" ; fi
     if [ "$1" == "warning" ] ; then output="\e[01;31m[w]\e[00m" ; fi
     if [ "$1" == "error" ] ; then output="\e[01;31m[e]\e[00m" ; fi
     output="$output $2"
     echo -en "$output"
}

function cout() {
     if [ "$1" == "action" ] ; then output="\e[01;32m[>]\e[00m" ; fi
     if [ "$1" == "info" ] ; then output="\e[01;33m[i]\e[00m" ; fi
     if [ "$1" == "warning" ] ; then output="\e[01;31m[w]\e[00m" ; fi
     if [ "$1" == "error" ] ; then output="\e[01;31m[e]\e[00m" ; fi
     output="$output $2"
     echo -e "$output"
}
