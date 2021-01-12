FROM ubuntu:18.04

ENTRYPOINT []

RUN apt-get update \
    && apt-get install -y python3.7.9 python3-pip \
    && python3 -m pip install --no-cache --upgrade pip \
    && pip3 install --no-cache rasa==2.1.3 . /app/

RUN chmod +x /app/main.sh

CMD /app/main.sh