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