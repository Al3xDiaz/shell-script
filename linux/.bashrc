alias open=xdg-open
gcommitt() {
    #do things with parameters like $1 such as
    git branch
    git add .
    git status
    sh ./test.sh && git commit -m "$1"
}
gpusht(){
    gcommitt "$1" && git push
}
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
gstash(){
    git add .
    git stash $@
}
ipv4(){
    hostname -I | awk '{print $1}'
}
alias grep="grep --color"
