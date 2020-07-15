# How to use

## attach build-up-in container

- git clone this repo

- docker-compose build

- docker-compose up -d

- docker-compose exec app /bin/bash

## in container

- go run main.go

## from host machine

- docker-compose exec app go run main.go
