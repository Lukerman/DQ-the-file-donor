FROM python:3.10.8-slim-buster

#RUN apt update && apt upgrade -y
#RUN apt install git -y
COPY  requirements.txt .
WORKDIR /music
RUN chmod 777 /music
RUN pip3 install --upgrade  pip 
RUN pip3 install -r requirements.txt
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
