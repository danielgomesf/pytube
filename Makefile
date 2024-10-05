SHELL := /bin/bash

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

install:
	pipenv install

activate:
	pipenv shell

run:
	python manage.py runserver

migration:
	python manage.py makemigrations

migrate:
	python manage.py migrate

superuser:
	python manage.py createsuperuser

deploy:
	docker compose build 
	docker compose up -d

start:
	docker compose up -d

down:
	docker compose down
