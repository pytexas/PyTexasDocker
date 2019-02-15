FROM python:3.6.8

ENV PYTHONUNBUFFERED 1
ENV SECRET_KEY="an insecure development secret"

COPY PyTexas /opt/PyTexas
WORKDIR /opt/PyTexas

RUN pip install -r requirements.txt
RUN python manage.py migrate
