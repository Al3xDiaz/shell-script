# shortcut-shell
Commands shell script
```bash
groups {user}
ifconfig
ip <-4|-6> a
ssh-keygen -m pem -f ~/.ssh/
figlet
apt-get install {paquete} -y
#-y para aceptar que instale el paquete
systemctl start docker
#cuando se muera docker

alias {name} "{comando}"
lsb_release -a
which {comando}
man, less & cat
tail -f {archibo} #ver el contenido de un archibo en constante actualizacion

eval $(ssh-agent -s)
net start ssh-agent
ssh-add ~/.ssh/id_rsa
usermod -s "/bin/bash" {usuario} #cambiar shell del usuario
ln -s [target file] [Symbolic filename]
var="texto" && echo "lowercase: ${var,,}, Capitalize: ${var^}, Upercase: ${var^^}"
rsync --partial --progress --rsh=ssh {copy/file/path} {user@ip}:{/server/path}
ssh -j server1 server2
```
