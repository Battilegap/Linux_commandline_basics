# Docker Development container (workbox)
---------------------------------------

## files

* Dockerfile - builds new image
* boostrap.sh - runs bootstrap commands at start up
* ssh-keys.sh - run by bootstrap.sh and creates a new ssh keypair
* ssh-config - see .ssh/config file adds config for github git account
* motd - set the message you will see when connecting to the container

## usage

### Build this container

  cd to this directory

```
  $ docker build -t ${USER}/workbox:latest .

```

### Start the container

  $ docker images

  find the image you just built and used the image id in the run command

  docker run -it -h hostname  -v /path/to/hosts/files:/target/in/container [tag]:latest e.g.

```
  $ docker run -it -h workbox-$(date "+DATE:%Y-%m-%d%n") --name workbox  -v /home/${USER}/:/shared ${USER}/workbox:latest

```

### Once started
    copy new ssh key from /root/.ssh/id_ecdsa_workbox.pub to github

    See : https://github.com/settings/keys if using a github account.

    run aws configure and copy the newest access and secret keys + set the region e.g. 'us-west-2'
    --- todo :
    Set enviroment vars AWS_DEFAULT_REGION=us-west-2
```
  $ aws configure
  ## test with some aws command e.g
  $ aws ec2 describe-instances --region us-west-2

```

## Packages

* Terraform
* Terragrunt
* Vim
* Openssl
* Curl
* Git

## Notes

Remove stale containers:

```
for i in `docker ps -a | grep "${USER}/dev-box-centos:latest" | awk '{print $1}'`; do echo $i ; docker stop $i ; docker rm -f $i; done


```
