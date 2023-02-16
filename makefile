app-init:
	git clone https://gitlab.2a2i.org/bioinformatic/dnalm_service.git backend
	git clone https://gitlab.2a2i.org/bioinformatics/dnalm.git frontend
	cp .env.example .env
	docker-compose run --rm node make app-build

backend-restart: backend-git-pull docker-build docker-down docker-up

docker-down:
	docker-compose down

docker-up:
	docker-compose up -d

docker-build:
	docker-compose build

backend-git-pull:
	git -C ./backend pull origin master

frontend-git-pull:
	git ./frontned pull origin master

frontend-build:
	docker-compose run --rm node make app-build

