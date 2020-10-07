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

## Install Docker
Visit https://fedoramagazine.org/docker-and-fedora-32/<br>
### Step 0: Removing conflicts
```bash
sudo dnf remove docker-*
sudo dnf config-manager --disable docker-*
```

### Step 1: System preparation
#### Enable old CGroups
```bash
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"
```
#### Whitelist docker in firewall
```bash
sudo firewall-cmd --permanent --zone=trusted --add-interface=docker0
sudo firewall-cmd --permanent --zone=FedoraWorkstation --add-masquerade
```

### Step 2: installing Moby
```bash
sudo dnf install moby-engine docker-compose
sudo systemctl enable docker
```

### Step 3: Restart and test
```bash
sudo systemctl reboot
sudo docker run hello-world
```

### Step 4: Running as admin
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl reboot
docker run hello-world
```

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
