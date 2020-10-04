#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "|    Fedora Workstation Setup    |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Install Google Chrome"
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable

printf "\n${yel}[INFO]${end} Install snap"
sudo dnf install snapd
sudo ln -s /var/lib/snapd/snap /snap

printf "\n${yel}[INFO]${end} Install Zoom"
sudo snap install zoom-client

printf "\n${yel}[INFO]${end} Install MS Teams"
sudo dnf install https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.16851-1.x86_64.rpm

printf "\n${yel}[INFO]${end} Install Slack"
sudo snap install slack --classic

printf "\n${yel}[INFO]${end} Install Visual Studio Code"
sudo snap install code --classic
code --install-extension ms-vscode-remote.remote-containers

printf "\n${yel}[INFO]${end} Installing Spotify Client"
printf "Reference: https://flathub.org/apps/details/com.spotify.Client\n"
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client
flatpak run com.spotify.Client

printf "\n${yel}[INFO]${end} Install and configure git"
sudo dnf install git
git config --global user.name "lennertfranssens"
git config --global user.email "lennert.franssens@gmail.com"
git config --global core.editor "nano"
echo | ssh-keygen -t rsa -b 4096 -C "lennert.franssens@gmail.com"
printf "Enable SSH key on https://github.com/settings/keys with the SSH key generated in /home/lennertfranssens/.ssh/id_rsa.pub"

printf "\n${yel}[INFO]${end} Installing emacs"
yes | sudo dnf install emacs
git clone git@github.com:lennertfranssens/emacs_config.git
config=$(cat emacs_config/REMOVE_BEFORE_DOT.emacs)
echo "${config}" > ~/.emacs
sudo rm -rf emacs_config

printf "\n${yel}[INFO]${end} Done with the setup!\n"

printf "\n${yel}[INFO]${end} Performing update"
sudo dnf update
