DOCKER_ID := $(shell docker ps -aq)
DOCKER_IMAGE_ID := $(shell docker images -q)
DOCKER_VOLUME := $(shell docker volume ls -q)
PWD := $(shell pwd)

# FRONTEND_VOL_PATH := $(PWD)/matcha/client
# BACKEND_VOL_PATH := $(PWD)/matcha/server
# USERS_VOL_PATH := $(PWD)/matcha/


all:
	docker compose -f matcha/compose.yaml up -d
# env

up:
	docker compose -f matcha/compose.yaml up -d

down:
	docker compose -f matcha/compose.yaml down

re: fclean
	make all

fclean:
	$(if $(DOCKER_ID), docker rm -f $(DOCKER_ID))
	$(if $(DOCKER_VOLUME), docker volume rm $(DOCKER_VOLUME))
#$(if $(DOCKER_IMAGE_ID), docker rmi $(DOCKER_IMAGE_ID))
# docker rmi -f nginx
# docker system prune -af

.PHONY: all up down re fclean