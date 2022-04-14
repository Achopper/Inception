
up:
	#docker-compose -f src/docker-compose.yaml buid
	docker-compose -f src/docker-compose.yaml up -d

down:
	docker-compose -f src/docker-compose.yaml down

re:
	docker-compose -f src/docker-compose.yaml up --build

