# Fedora Workstation Setup

## Automatic setup
01. Open terminal

02. Run the script pre_installation.sh
```bash
bash ./pre_installation.sh
```

03. Run the script install_programs.sh
```bash
bash ./install_programs.sh
```

04. Run the script post_installation.sh
```bash
bash ./post_installation.sh
```

## Install Java JDK
Visit https://docs.fedoraproject.org/en-US/quick-docs/installing-java/<br>
And add PATH and JAVA_HOME https://medium.com/@ayeshajayasankha/how-to-install-and-switch-between-alternative-java-versions-66b3671fc382<br>

## Install Zoom
Visit https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux<br>

## Install Docker
Visit https://fedoramagazine.org/docker-and-fedora-32/, https://dev.to/yzwdroid/fedora-33-docker-445k or https://computingforgeeks.com/how-to-install-docker-on-fedora/<br>

## Install NetBeans
```bash
sudo snap install netbeans --classic
```

## Install WebStorm
```bash
sudo snap install webstorm --classic
```

## kubectl
Visit https://kubernetes.io/docs/tasks/tools/install-kubectl/<br>

## helm
```bash
sudo snap install helm --classic
```

## npm
```bash
sudo dnf install npm
```

## Install PostgreSQL and pgAdmin4
Visit https://www.postgresql.org/download/linux/redhat/ and https://computingforgeeks.com/how-to-install-pgadmin-on-centos-fedora/<br>
```bash
sudo apt install pgadmin4
```

## Wayland
https://community.teamviewer.com/t5/Linux-EN/Linux-Disable-Wayland-Support/td-p/1103<br>

## VNC
https://www.server-world.info/en/note?os=Fedora_32&p=desktop&f=7<br>

## Manual configuration git
01. Configuration of git
```bash
git config --global user.name "testuser"
git config --global user.email "testuser@example.com"
```
  
02. Nano instead of vi as default editor for git?
```bash
git config --global core.editor "nano"
```
