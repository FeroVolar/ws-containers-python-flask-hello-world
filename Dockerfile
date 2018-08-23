FROM ubuntu:latest

MAINTAINER Fero Volar – fero.volar@websupport.sk

RUN set -ex \
	&& apt-get update \
	&& apt-get install -y \
 			python-pip \
 			python-dev \
 			build-essential \
 	&& apt-get clean \
 	&& pip install --upgrade pip

ENV APPPATH /data/python-flask-hello-world
COPY . $APPPATH
WORKDIR $APPPATH/app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["src/app.py"]
