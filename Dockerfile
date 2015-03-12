FROM quay.io/wantedly/python:2.7.7
# See below links for the reason why we're using 2.7.7 instead of 2.7.9
# https://github.com/locustio/locust/issues/234
MAINTAINER Seigo Uchida <spesnova@gmail.com> (@spesnova)

RUN pip install locustio pyzmq
WORKDIR /test

ENTRYPOINT ["locust"]
