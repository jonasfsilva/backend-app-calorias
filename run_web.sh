#!/bin/sh

# wait for PSQL server to start
sleep 12

# python manage.py makemigrations
# migrate db, so we have the latest db schema   
# python manage.py migrate

#python manage.py loaddata fixtures/initial_data.json
# start development server on public ip interface, on port 8000
python manage.py runserver 0.0.0.0:8000