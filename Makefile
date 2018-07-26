build-image:
	docker build -t yesod-postgresql-build -f yesod-postgresql-build.docker

run-image:
	echo run image

deploy:
	echo deploy images to docker hub
