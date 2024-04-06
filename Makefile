#minclude .env

init:
	docker-compose up -d --build db
	sleep 10
	mysql -u ${MYSQL_USER} -p -h 127.0.0.1 -P 3306 -p${MYSQL_PASSWORD} < db/init.sql
	make start
start:
	docker-compose up -d --build
up:
	docker-compose up -d 
stop:
	docker-compose stop
down:
	docker-compose down
ps:
	docker-compose ps
shell-app:
	docker-compose exec app  /bin/bash
logs-app:
	docker-compose logs app
