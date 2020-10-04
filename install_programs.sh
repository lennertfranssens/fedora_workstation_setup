#!/bin/bash

red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
end=$'\e[0m'

printf "|--------------------------------|\n"
printf "|    Fedora Workstation Setup    |\n"
printf "|--------------------------------|\n"

printf "\n${yel}[INFO]${end} Install Google Chrome\n"
sudo dnf install fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable

printf "\n${yel}[INFO]${end} Install Zoom\n"
sudo snap install zoom-client

printf "\n${yel}[INFO]${end} Install MS Teams\n"
sudo dnf install https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.16851-1.x86_64.rpm

printf "\n${yel}[INFO]${end} Install Slack\n"
sudo snap install slack --classic

printf "\n${yel}[INFO]${end} Install Visual Studio Code\n"
sudo snap install code --classic

printf "\n${yel}[INFO]${end} Install Spotify Client\n"
printf "Reference: https://flathub.org/apps/details/com.spotify.Client\n"
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.spotify.Client
flatpak run com.spotify.Client

printf "\n${yel}[INFO]${end} Install and configure git\n"
sudo dnf install git
git config --global user.name "lennertfranssens"
git config --global user.email "lennert.franssens@gmail.com"
git config --global core.editor "nano"
echo | ssh-keygen -t rsa -b 4096 -C "lennert.franssens@gmail.com"
printf "Enable SSH key on https://github.com/settings/keys with the SSH key generated in /home/lennertfranssens/.ssh/id_rsa.pub\n"

printf "\n${yel}[INFO]${end} Install emacs\n"
yes | sudo dnf install emacs

printf "\n${yel}[INFO]${end} Log Out and proceed with post_installation.sh\n"
