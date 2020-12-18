FROM python:3.8-alpine

WORKDIR /game

RUN apk update
RUN add build-base

COPY requirements.txt /game/requirements.txt

RUN pip3 install -r requirements.txt

CMD ["python", "./moonlanding/setup.py"]