#!/bin/bash


##################
#Author:Shakti Singh
#Date:08/08/2024
#Version:V1
#Git latest version  installation  through source code
#Operating System: Ubuntu 24.04 LTS
#Kernel:Linux 6.8.0-1009-aws
#Server:EC2 instance
#Cloud:AWS
##################


#Dependency
sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \
  gettext libz-dev libssl-dev

#Dependency 2 
sudo apt-get install asciidoc xmlto docbook2x

#Dependency 3
 sudo apt-get install install-info

#Download git latest version archive file which have source code from  https://mirrors.edge.kernel.org/pub/software/scm/git/
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.46.0.tar.xz

#Extract archiver file using tar command
tar -vxf git-2.46.0.tar.xz

#cd to git-2.46.0(directory)
cd git-2.46.0

#install make package
sudo apt install make

#configure make package
make configure

#It is a part of the process of building and installing software from souce code 
./configure --prefix=/usr

#This command is typically used in the context  of  building software from  souce 
make all doc info

#This command is used to install various components of a software package from source
sudo make install install-doc install-html install-info


