#!/usr/bin/env bash
python manage.py collectstatic --noinput
python manage.py makemigrations --noinput
python manage.py migrate --noinput
exec gunicorn admin.wsgi -b 0.0.0.0:3001 --log-config ./logging.conf --access-logformat "%(t)s %(s)s %(r)s %(L)s %(b)s" --log-level debug
