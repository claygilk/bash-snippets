#!/bin/sh

#
# This function prints a border around what ever string you pass to it.
# The border is made of pound signs (#).
#
banner(){
    msg=$1

    char_count=$(printf "${msg}" | wc -c)
    banner_length=$(( char_count + 12 ))

    printf '#%.0s' $(seq $banner_length)
    printf '\n'

    printf "###   ${msg}   ###\n"

    printf '#%.0s' $(seq $banner_length)
    printf '\n'
}
