.PHONY: install
install:
	poetry install

.PHONY: run
run:
	poetry run python manage.py runserver

.PHONY: migrations
migrations:
	poetry run python manage.py makemigrations

.PHONY: migrate
migrate:
	poetry run python manage.py migrate

.PHONY: superuser
superuser:
	poetry run python manage.py createsuperuser

.PHONY: shell
shell:
	poetry run python manage.py shell

.PHONY: test
test:
	poetry run python manage.py test

.PHONY: update
update: install migrate;

# Path: Makefile
lint:
	poetry run flake8 --exclude=migrations,venv