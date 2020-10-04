#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "|  Pre Fedora Workstation Setup  |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Install snap\n"
sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap

printf "\n${yel}[INFO]${end} Log Out and proceed with install_programs.sh\n"
