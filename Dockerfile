FROM ubuntu:latest

COPY mysite /mysite
WORKDIR /mysite

RUN apt-get update \
&& apt-get install -y mkdocs \

CMD mkdocs serve --dev-addr 146.59.231.60:8000 
