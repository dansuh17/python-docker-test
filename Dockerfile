FROM centos:centos8

RUN yum update -y \
      && yum install -y libsndfile \
      && dnf install -y python3

RUN python3 --version

WORKDIR /root/server

RUN pip3 install librosa

COPY simple_server.py ./simple_server.py

EXPOSE 8080

CMD ["python3", "simple_server.py"]
