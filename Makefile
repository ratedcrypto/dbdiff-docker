SHELL := /bin/bash

include .env

help:		## Show this help information
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

start:		## Start all services (backgrounded)
	mkdir -p db-data
	docker-compose up -d

diff:
	docker exec -it phpdbdiff bash -c './dbdiff server1.db1:server2.db2'

stop:		## Stop all services
	-docker-compose down

clean:		## Stop and remove all containers and images
	-docker-compose down
	-docker stop $$(docker ps -aq)
	-docker rm $$(docker ps -a -f status=exited -q)
	-docker image rm mysql:${MYSQL_VERSION}
	-docker image rm phpdbdiff:latest

