# Shell Script
Commands shell script
```sh
service $SERVICE restart

#format json
curl -s $URI | jq ""
groups $USER
ifconfig
ip <-4|-6> a
ssh-keygen -m pem -f ~/.ssh/
figlet
apt-get install $PACKAGE -y
#-y para aceptar que instale el paquete
systemctl start docker
#cuando se muera docker

alias $ALIAS_NAME "$COMAND"
lsb_release -a
which $COMMAND
man, less & cat
tail -f $FILE_PATH #ver el contenido de un archibo en constante actualizacion

eval $(ssh-agent -s)
net start ssh-agent
ssh-add ~/.ssh/id_rsa
usermod -s "/bin/bash" $USER #cambiar shell del usuario
ln -s [target file] [Symbolic filename]
var="texto" && echo "lowercase: ${var,,}, Capitalize: ${var^}, Upercase: ${var^^}"
rsync --partial --progress --rsh=ssh copy/file/path $USER@$HOST:/server/path
ssh -j server1 server2
```
