#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "| Post Fedora Workstation Setup  |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Configure Visual Studio Code\n"
code --install-extension ms-vscode-remote.remote-containers

printf "\n${yel}[INFO]${end} Configure emacs config\n"
git clone git@github.com:lennertfranssens/emacs_config.git
config=$(cat emacs_config/REMOVE_BEFORE_DOT.emacs)
echo "${config}" > ~/.emacs
sudo rm -rf emacs_config

printf "\n${yel}[INFO]${end} Enable SSH\n"
sudo dnf install openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd

printf "\n${yel}[INFO]${end} Performing update\n"
sudo dnf update

printf "\n${yel}[INFO]${end} Done with the setup!\n"
