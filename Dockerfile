# Dockerfile

# official docker image
FROM python:3.11.1-slim

# set work directory
WORKDIR /code

# set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt /code/requirements.txt
RUN pip install --upgrade pip --no-cache-dir -r /code/requirements.txt

# copy project
COPY ./app /code/app
