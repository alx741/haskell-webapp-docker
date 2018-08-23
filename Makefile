build-image:
	docker build -t alx741/haskell-webapp-build -f haskell-webapp-build.docker .

run-image:
	docker build -t alx741/haskell-webapp-run -f haskell-webapp-run.docker .

deploy: build-image run-image
	docker push alx741/haskell-webapp-build
	docker push alx741/haskell-webapp-run
