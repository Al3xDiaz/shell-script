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
    git commit -m "$1"
}
gpush(){
    gcommit "$1"
    git push
}
alias tree="cmd //c tree"
gstash(){
    git add .
    git stash $@
}

```