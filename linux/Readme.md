# linux
## comands
```sh

```
## files configurations
```bash
#.bash_history  

#.bash_login  
#.bash_profile  
#.bashrc
gcommit() {
    #do things with parameters like $1 such as
    git branch
    git add .
    git status
    sh ./test.sh && git commit -m "$1"
}
gpush(){
    gcommit "$1" && git push
}
gstash(){
    git add .
    git stash $@
}
ipv4(){
hostname -I | awk '{print $1}'
}

```
# Add Wifi to Debian
## 1.Add “non-free” component to /etc/apt/sources.list, for example:
```
# Debian 9 "Stretch"
deb http://httpredir.debian.org/debian/ stretch main contrib non-free
```
## 2.Update the list of available packages and install the firmware-iwlwifi package:
```sh
apt-get update; apt-get install firmware-iwlwifi
```
## 3.As the iwlwifi module is automatically loaded for supported devices, reinsert this module to access installed firmware:
```sh
modprobe -r iwlwifi; modprobe iwlwifi
```
