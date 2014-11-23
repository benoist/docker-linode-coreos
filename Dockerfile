FROM centos:centos7
MAINTAINER Przemyslaw Ozgo linux@ozgo.info, Marcin Ryzycki marcin@m12.io

ENV GITHUB_KEY key
ENV LINODE_KEY key

RUN \
  yum install -y epel-release && \
  yum update all && \
  yum install -y git pwgen sshpass openssh sudo jq && \
  yum clean all && \
  cd /root && \
  git clone https://github.com/million12/linodeapi.git && \
  mv /root/linodeapi/linode /usr/local/bin/linode && \
  mv /root/linodeapi/linodeapi /usr/local/bin/linodeapi && \
  mv /root/linodeapi/linode_api_macro /etc/linode_api_macro && \
  cd /root && \
  rm -rf /root/linodeapi
  
CMD linode --help
