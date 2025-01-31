web: python3 -m gunicorn backend.wsgi
web: python manage.py migrate && python manage.py collectstatic --noinput && gunicorn technoboomressurection.wsgi
web: gunicorn technoboomressurection.wsgi --bind 8.0.8.0:$PORT
