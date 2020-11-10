FROM ubuntu:latest

RUN apt-get update \
&& apt-get install -y mkdocs 

COPY mysite /site
WORKDIR /site

EXPOSE 8000
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
#CMD /bin/bash
