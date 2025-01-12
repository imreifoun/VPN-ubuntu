COMPOSE = ./ENV/docker-compose.yml


all :
	docker-compose -f $(COMPOSE) build
	@echo "\033[0;31m[ Success !]\033[0m"

up :
	docker-compose -f $(COMPOSE) up -d vpn

stop :
	@docker-compose -f $(COMPOSE) stop
	@echo "\033[0;31m[ All Containers are Stopped ! ]\033[0m"

delete :
	@docker rm $$(docker ps -aq) && docker rmi $$(docker images -aq)
