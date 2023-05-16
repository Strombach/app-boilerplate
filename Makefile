DOCKER_COMPOSE := docker-compose

build:
	${DOCKER_COMPOSE} build

dev:
	${DOCKER_COMPOSE} -f docker-compose.yml -f docker-compose.dev.yml up -d --build

prod:
	${DOCKER_COMPOSE} -f docker-compose.yml -f docker-compose.prod.yml up -d --build

clean-dev: $(CURDIR)/docker-compose.yml
	$(DOCKER_COMPOSE) --file '$(CURDIR)/docker-compose.yml' --project-name 'dev' down -v

clean-prod: $(CURDIR)/docker-compose.yml
	$(DOCKER_COMPOSE) --file '$(CURDIR)/docker-compose.yml' --project-name 'prod' down

clean-all: clean-dev clean-prod
