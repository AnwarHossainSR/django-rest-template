install:
	poetry install

run:
	poetry run python manage.py runserver

migrations:
	poetry run python manage.py makemigrations

migrate:
	poetry run python manage.py migrate

superuser:
	poetry run python manage.py createsuperuser

shell:
	poetry run python manage.py shell

test:
	poetry run python manage.py test

update: install migrate;

# Path: Makefile
lint:
	poetry run flake8 --exclude=migrations,venv