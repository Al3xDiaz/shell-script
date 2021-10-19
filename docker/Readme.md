### Docker & Docker compose
```bash
$ export COMPOSE_FILE=$FILE

#Django admin
#$1... services
$ docker-compose  -f "docker-compose.yml" up -d --build $1 $2 $3...

#example with django COMMAND=python manage.py createsuperuser
$ docker-compose run -rm $COMMAND
```
