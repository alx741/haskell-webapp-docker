build-image:
	docker build -t yesod-postgresql-build -f yesod-postgresql-build.docker .

run-image:
	docker build -t yesod-postgresql-run -f yesod-postgresql-run.docker .

deploy: build-image run-image
	docker push yesod-postgresql-build
	docker push yesod-postgresql-run
