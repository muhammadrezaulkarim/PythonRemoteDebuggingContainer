FROM alpine:3.5

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install --no-cache-dir -r requirements.txt
  && rm -rf /var/cache/apk/*

WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 8082
CMD ["/usr/bin/python", "PythonHelloWorld.py"]
