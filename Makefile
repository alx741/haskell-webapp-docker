build-image:
	docker build -t alx741/yesod-postgresql-build -f yesod-postgresql-build.docker .

run-image:
	docker build -t alx741/yesod-postgresql-run -f yesod-postgresql-run.docker .

deploy: build-image run-image
	docker push alx741/yesod-postgresql-build
	docker push alx741/yesod-postgresql-run
