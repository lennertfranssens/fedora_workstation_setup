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

printf "\n${yel}[INFO]${end} Install git\n"
sudo dnf install git

printf "\n${yel}[INFO]${end} Configure git\n"
git config --global user.email "lennert.franssens@ugent.be"
git config --global user.name "lefranss"
echo | ssh-keygen -t rsa -b 4096 -C "lennert.franssens@ugent.be"
printf "Enable SSH key on https://github.com/settings/keys with the SSH key generated in /home/lennertfranssens/.ssh/id_rsa.pub\n"

printf "\n${yel}[INFO]${end} Enable ssh on git, log out and proceed with install_programs.sh\n"
