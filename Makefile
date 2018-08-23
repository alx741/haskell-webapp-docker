build-image:
	docker build -t alx741/haskell-webapp-postgresql-build -f haskell-webapp-postgresql-build.docker .

run-image:
	docker build -t alx741/haskell-webapp-postgresql-run -f haskell-webapp-postgresql-run.docker .

deploy: build-image run-image
	docker push alx741/haskell-webapp-postgresql-build
	docker push alx741/haskell-webapp-postgresql-run
