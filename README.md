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
