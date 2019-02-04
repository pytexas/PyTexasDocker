FROM python:3.6.8

ENV PYTHONUNBUFFERED 1
ENV SECRET_KEY="an insecure development secret"
ENV FRONTEND_DIR="/opt/PyTexas2019/"

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY Django-Conference /opt/DjangoConference
RUN pip install -e /opt/DjangoConference

COPY PyTexasBackend /opt/PyTexasBackend
WORKDIR /opt/PyTexasBackend

RUN python manage.py migrate
