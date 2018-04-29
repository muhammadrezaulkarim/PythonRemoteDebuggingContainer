FROM alpine:3.3

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install --no-cache-dir -r requirements.txt \
  && rm -rf /var/cache/apk/*

EXPOSE 8082
CMD ["/usr/bin/python", "PythonHelloWorld.py"]
