FROM jfloff/alpine-python:2.7

RUN apk add --update jpeg-dev zlib-dev

# for a flask server
EXPOSE 5000

COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt
CMD python server.py
