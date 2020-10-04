
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

printf "\n${yel}[INFO]${end} Uninstall old versions of Docker\n"
printf "\nReference: https://docs.docker.com/engine/install/fedora/\n"
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

printf "\n${yel}[INFO]${end} SET UP THE REPOSITORY for Docker\n"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

printf "\n${yel}[INFO]${end} Log Out and proceed with install_programs.sh\n"
