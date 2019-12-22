FROM centos:centos8

RUN yum update -y \
      && dnf install -y python3

RUN python3 --version

WORKDIR /root/server

COPY simple_server.py ./simple_server.py

RUN pip3 install librosa

CMD ["python3", "simple_server.py"]
