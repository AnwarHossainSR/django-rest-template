#!/bin/sh

echo 'Waiting for PostgreSQL to be ready...'
while ! ncat -z db 5432; do
    sleep 1
done
echo 'PostgreSQL is ready'

echo 'Running migrations...'
python manage.py migrate

echo 'Collecting static files...'
python manage.py collectstatic --no-input

exec "$@"
