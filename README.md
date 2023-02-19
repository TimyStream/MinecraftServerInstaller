# Minecraft Server Installer
This installer downloads and makes all the mangement files ready to be used with a minecraft server that is managed via Tmux.


## How to use

### Install Dependencies
To run this script and use this Management Solution you need to install some Dependencies.
```
curl
tmux
Java
```
<br>

**Ubuntu / Debian:**
```BASH
apt install curl tmux
```
**CentOS/RHEL:**
```BASH
yum install curl tmux
```
**ArchLinux:**
```BASH
pacman -Sy curl tmux
```
---

### Manual way
To use this script Simply download the ["installer.sh"](installer.sh) file, give it Execution Permission with:
```BASH
chmod +x installer.sh
```
and execute it with:
```BASH
bash installer.sh
```

### Automatic/Easy Way
Just execute this Line:
```BASH
curl -sO https://raw.githubusercontent.com/TimyStream/MinecraftServerInstaller/main/installer.sh && bash ./installer.sh && rm -rf ./installer.sh
```

# Thank you for for using this Script 😊