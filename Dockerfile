FROM python:3.10.8-slim-buster

#RUN apt update && apt upgrade -y
#RUN apt install git -y
COPY  requirements.txt .
RUN cd root/ &&  ls -a
RUN mkdir /DQTheFileDonor 
WORKDIR /DQTheFileDonor
RUN pip3 install --upgrade  pip 
RUN pip3 install -r requirements.txt
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
