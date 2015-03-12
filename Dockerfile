FROM quay.io/wantedly/python:2.7.7
MAINTAINER Seigo Uchida <spesnova@gmail.com> (@spesnova)

RUN pip install locustio pyzmq
RUN mkdir /test
WORKDIR /test
ENTRYPOINT ["locust"]
