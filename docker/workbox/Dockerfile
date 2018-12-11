FROM centos:latest
LABEL TYPE=workbox
RUN yum install -y epel-release
RUN yum install -y \
  wget \
  git \
  rsync \
  python-pip \
  vim \
  unzip \
  openssl \
  screen \
  curl \
  expect
RUN pip install awscli
## uncomment if you need the kitchen sink!!!
#RUN yum groupinstall -y 'Development Tools'
# Install terraform 0.11.7
RUN wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
RUN unzip terraform_0.11.7_linux_amd64.zip
RUN mv terraform /usr/bin/terraform
RUN chmod +x /usr/bin/terraform
# Install terragrunt 0.16.1
RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.16.1/terragrunt_linux_amd64
RUN mv terragrunt_linux_amd64 /usr/bin/terragrunt
RUN chmod +x /usr/bin/terragrunt
# set editor and install bootstrap scrpts
RUN export EDITOR=vim
ADD $PWD/scripts/bootstrap.sh /opt/bootstrap.sh
RUN chmod 700 /opt/bootstrap.sh
ADD $PWD/scripts/ssh-keys.sh /opt/ssh-keys.sh
RUN chmod 700 /opt/ssh-keys.sh
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
ADD $PWD/scripts/ssh-config /root/.ssh/config
RUN chmod 600 /root/.ssh/config
# bootstrap.sh runs stuff when the image is started
RUN echo "/opt/bootstrap.sh" >> /root/.bashrc
# add useful messages for login
ADD $$PWD/scripts/motd /etc/motd
RUN echo "cat /etc/motd" >> /root/.bashrc
WORKDIR /root
