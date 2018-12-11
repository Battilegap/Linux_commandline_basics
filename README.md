# Introduction to Linux Command Line & Bash shell.


## Step one
-----------
To use this project lets start with some basic git commands and usage.
KEY:
<description> <-- a value or setting to add to your command like 'user name'

Using git:
Make sure git is installed on your system

* For debian / ubuntu / mint : $ sudo apt-get install git
* For Fedora / Centos / Redhat : $ sudo yum install git

Clone this repository to your local machine.

```
$ git clone https://github.com/Battilegap/Linux_commandline_basics.git

```

As part of this course you should create your own github account to do this go to
https://github.com/join and follow the instructions to create a new account if you do not have one.

Once you have an account in order to save you own work and get used to git/version control you will need to do a little configuration.

* First got to your github account https://github.com/<account name>?tab=repositories
* Click new
* name your repo 'Linux_commandline_basics'
* Add your public ssh key if you want to : https://github.com/settings/keys
* for notes on ssh see lessons/ssh
* cd into the directory of this cloned repo and run the following commands.


```
$ cd Linux_commandline_basics
$ git remote add <you account name> https://github.com/<you account name>/Linux_commandline_basics.git
## or if using SSH
$ git remote add <you account name> git@github.com:<you account name>/Linux_commandline_basics.git

$ git push <you account name> master

```

When making changes to your own version of this repo you should use a simple git flow to make sure changes can be tracked and shared safely.


## contents
-----------
* basic commands [navigation, managing files, core skills]
* system commands [checking system resources]
* Bash as a tool [constructing commands, pipe, redirecting input/output]
* Bash as a language [writing simple bash scripts]

## advanced
-----------
* Docker files and scripts 'intro to containers'
* workbox - terraform getting started 'requires aws account'
* workbox - aws cli getting started 'requires aws account'
