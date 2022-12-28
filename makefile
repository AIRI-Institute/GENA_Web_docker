app-init:
	git clone https://gitlab.2a2i.org/bioinformatic/dnalm_service.git backend
	git clone https://gitlab.2a2i.org/bioinformatics/dnalm.git frontend
	cp .env.example .env
	docker-compose run --rm node make app-build

app-build:
	docker-compose run --rm node make app-build

app-node:
	docker-compose exec node sh
