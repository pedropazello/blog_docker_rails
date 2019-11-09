# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


docker pull ruby:2.3

docker run --rm -it -v "$PWD:/app" ruby:2.3 bash

docker build -t blog .

docker network ls

docker network

docker run -d -e POSTGRES_USER=$POSTGRES_USER -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD --net=blog --name db postgres

docker run --rm -e POSTGRES_USER=$POSTGRES_USER -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD --net=blog rake db:setup

docker run -e POSTGRES_USER=$POSTGRES_USER -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD --net=blog --name app -v $PWD:/usr/src/app -p 3000:3000 blog

docker-compose up

docker-compose up -d

docker-compose ps

docker-compose run app rake db:setup

docker rm $(docker ps -a -q)
