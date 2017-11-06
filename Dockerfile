FROM python:2.7.14-alpine

RUN apk add --no-cache -U \
      zeromq-dev

COPY requirements.txt /

RUN apk add --no-cache -U --virtual build-deps \
      g++ \
    && pip install -r /requirements.txt \
    && apk del build-deps

WORKDIR /test

ENTRYPOINT ["locust"]
