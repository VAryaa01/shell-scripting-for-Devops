################################################################
#You’ve successfully debugged:

#Makefile syntax issues

#Docker flag compatibility

#MySQL permission errors

#Container networking

#Volume configuration

#AWS access

#That’s solid DevOps troubleshooting 👏
#######################################################################




DOCKER_COMPOSE := docker-compose

OS := $(shell uname)

build:
	
ifeq ($(OS), Linux)
	@echo "Running in $(OS)"
	$(DOCKER_COMPOSE) build

endif

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean:
	docker system prune -f


