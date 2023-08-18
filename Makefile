build :
	docker compose -f ./srcs/docker-compose.yml build
up:
	docker compose -f ./srcs/docker-compose.yml up
rm:
	docker compose -f ./srcs/docker-compose.yml down --rmi all