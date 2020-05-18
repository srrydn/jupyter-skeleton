app.build:
	docker-compose build jupyter

app.up:
	docker-compose up jupyter

app.bash:
	docker-compose exec jupyter bash

app.daemon:
	docker-compose up -d jupyter

app.stop:
	docker-compose stop

app.logs:
	docker-compose logs -f jupyter