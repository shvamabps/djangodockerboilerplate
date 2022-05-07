FROM python:latest

ENV PYTHONDONTWRITEBYTECODE 1 # Prevent writing .pyc files

ENV PYTHONUNBUFFERED 1 # Prevent buffering

WORKDIR /app

COPY . /app/

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 8000
