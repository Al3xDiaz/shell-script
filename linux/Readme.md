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
alias open=xdg-open

gcommit() {
    #do things with parameters like $1 such as
    git branch
    git add .
    git status
    git commit -m "$1"  
}
gpush(){
    gcommit "$1" && git push
}
alias gpull="git pull"
alias gfetch="git fetch"
alias gmerge="git merge"
alias grest="git reset --mixed HEAD~1"
alias gbranch="git branch"
tcommit() {
    sh ./test.sh && gcommit "$1"
}
tpush(){
    tcommit "$1" && git push
}
gstash(){
    git add .
    git stash $@
}
ipv4(){
    hostname -I | awk '{print $1}'
}
alias grep="grep --color"


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
