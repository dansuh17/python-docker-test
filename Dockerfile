FROM centos:centos8

RUN yum update -y \
      && yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
      && yum install -y python36u python36u-libs python36u-devel python36u-pip

RUN python3 --version

WORKDIR /root/server

COPY simple_server.py ./simple_server.py

RUN pip3 install librosa

CMD ["python3", "simple_server.py"]
