# Introduction to Linux Command Line & Bash shell.


## Step one
-----------
To use this project lets start with some basic git commands and usage.

#### Documentation KEY

< description > = a value or setting to add to your command like 'user name'

### Using git:
Make sure git is installed on your system

* For debian / ubuntu / mint : $ sudo apt-get install git
* For Fedora / Centos / Redhat : $ sudo yum install git

Clone this repository to your local machine.

```
$ cd $HOME
$ git clone https://github.com/Battilegap/Linux_commandline_basics.git

```

As part of this course you should create your own github account to do this go to
https://github.com/join and follow the instructions to create a new account if you do not have one.

Once you have an account in order to save you own work and get used to git/version control you will need to do a little configuration.

* First go to your github account https://github.com/<account name>?tab=repositories
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
### Git work flow

When making changes to your own version of this repo you should use a simple git flow to make sure changes can be tracked and shared safely.

The basic workflow looks like this:
```
## First create a branch
$ git branch hello_universe_branch

## go into your new branch
git checkout hello_universe_branch

## Now make a change to your repo by creating the file hello_universe.txt
$ cd Linux_commandline_basics/examples
$ echo "hello universe" >> hello_universe.txt

## add your change
$ git add Linux_commandline_basics/examples/hello_universe.txt

## commit you change and add a comment
$ git commit -m "I just created a file called hello_universe.txt"

## Now push you changes to your github account
git push <you account name> hello_universe_branch

## In a web browser go to your account https://github.com/<you account name>/Linux_commandline_basics
## you should see the button 'Branch: master' on the left hand side.
## click on the down arrow on the side of this button and you should also see your new branch
## Select the new branch 'hello_universe_branch' and you should now see you new file
## under Linux_commandline_basics/examples/hello_universe.txt

## Congratulations you just saved a change to a new branch !

## assuming you are happy with your change and want it to be on the master branch do the following.

## go into the master branch
$ git checkout master

## merge/add the changes in the 'hello_universe_branch' into master
$ git merge hello_universe_branch

## now push the changes now in master back out to you github account
$ git push <you account name> master

## In a web browser go to your account https://github.com/<you account name>/Linux_commandline_basics
## you should see your changes appear in the master branch now.

```

Typically, the master branch represents the stable code base or most current set of files.
When sharing work with others you all pull from the master branch and create your own branch before
merging you code back into master when it is complete.

It is common practice with teams to create a 'pull request' before merging so that others can see what changes are happening. this reduces the risk of changes getting into conflict with each other.

See if you can find the section in your repo for issuing a pull request and try sending yourself one.


## contents
-----------
* basic commands [navigation, managing files, core skills]
* system commands [checking system resources]
* Bash as a tool [constructing commands, pipe, redirecting input/output]
* Bash as a language bash scripting [writing simple bash scripts]

## advanced
-----------
* Docker files and scripts 'intro to containers'
* workbox - terraform getting started 'requires aws account'
* workbox - aws cli getting started 'requires aws account'
