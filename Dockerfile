FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt
WORKDIR /music
RUN chmod 777 /music
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /DQ-the-file_donor
WORKDIR /DQ-the-file-donor
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
