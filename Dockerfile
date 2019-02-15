FROM python:3.6.8

ENV PYTHONUNBUFFERED 1
ENV SECRET_KEY="an insecure development secret"

RUN pip install -r PyTexas/requirements.txt
COPY PyTexas /opt/PyTexas
WORKDIR /opt/PyTexas

RUN python manage.py migrate
