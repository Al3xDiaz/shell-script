alias open=xdg-open
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
alias grep="grep --color"
