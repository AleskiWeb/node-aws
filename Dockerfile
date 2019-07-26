FROM node:8

RUN apt update

RUN apt-get install -y python-dev python-pip
RUN python -m pip install -U pip
RUN pip install --upgrade pip
RUN pip install awsebcli
RUN export PATH=$PATH:/opt/aws/eb/linux/python2.7/

RUN pip install awscli --upgrade --user
