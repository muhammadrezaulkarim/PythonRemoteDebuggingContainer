FROM python:3.6.6-alpine3.6

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN apk add --update \
    py-pip \
  && pip install --no-cache-dir -r requirements.txt \
  && rm -rf /var/cache/apk/*

EXPOSE 8082
EXPOSE 5678
CMD ["/usr/local/bin/python", "PythonHelloWorld.py"]
