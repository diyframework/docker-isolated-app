FROM python:3.7.4-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

# Install requirements
ADD requirements.txt /code/
RUN pip install -r requirements.txt

# add workdir
ADD . /code/
