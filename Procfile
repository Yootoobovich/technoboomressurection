web: python3 -m gunicorn backend.wsgi
web: python manage.py migrate && python manage.py collectstatic --noinput && gunicorn your_project_name.wsgi
