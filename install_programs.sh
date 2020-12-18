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

printf "\n${yel}[INFO]${end} Install MS Teams\n"
sudo dnf install https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.16851-1.x86_64.rpm

printf "\n${yel}[INFO]${end} Install Zoom\n"
sudo snap install zoom-client

printf "\n${yel}[INFO]${end} Install Slack\n"
sudo snap install slack --classic

printf "\n${yel}[INFO]${end} Install Visual Studio Code\n"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

printf "\n${yel}[INFO]${end} Install Intellij Ultimatte\n"
sudo snap install intellij-idea-ultimate --classic

printf "\n${yel}[INFO]${end} Install Spotify Client\n"
sudo snap install spotify

printf "\n${yel}[INFO]${end} Install maven\n"
yes | sudo dnf install maven

printf "\n${yel}[INFO]${end} Install emacs\n"
yes | sudo dnf install emacs

printf "\n${yel}[INFO]${end} Install sensors\n"
yes | sudo dnf install lm_sensors

printf "\n${yel}[INFO]${end} Install gitlab-runner\n"
curl -LJO https://gitlab-runner-downloads.s3.amazonaws.com/latest/rpm/gitlab-runner_amd64.rpm
sudo rpm -i gitlab-runner_amd64.rpm
sudo rm -rf gitlab-runner_amd64.rpm

printf "\n${yel}[INFO]${end} Log Out and proceed with post_installation.sh\n"
