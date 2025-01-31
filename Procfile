web: python3 -m gunicorn backend.wsgi
web: python manage.py migrate && python manage.py collectstatic --noinput && gunicorn backend.wsgi
web: gunicorn backend.wsgi --bind 0.0.0.0:$PORT
