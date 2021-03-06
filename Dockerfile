FROM alpine:latest

RUN apk add python3 py3-lxml py3-gunicorn py3-pip git

ADD . /app
RUN pip3 install /app

CMD gunicorn --bind 0.0.0.0:8080 -w 4 morss:cgi_standalone_app
