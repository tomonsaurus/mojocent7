#!/usr/bin/env bash

PERL_INSTALL_VERSION='perl-5.20.3'

echo "**exec user:"
whoami

################################################
echo "**yum install"

sudo yum -y install perl vim gcc  git


sudo yum install -y -q ntp
sudo systemctl start  ntpd
sudo systemctl enable ntpd
sudo timedatectl set-timezone Asia/Tokyo

# centos7
sudo sed -i -e 's/^PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo sed -i -e 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config

sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo systemctl disable NetworkManager
sudo systemctl stop NetworkManager
sudo systemctl enable network
sudo systemctl start network



################################################
echo "**perlbrew"

cd ~

export PERLBREW_ROOT=$HOME/.perlbrew

#if [[ ! -d $HOME/.perlbrew ]]; then

  curl -L http://xrl.us/perlbrewinstall --insecure | bash


  ~/.perlbrew/bin/perlbrew init
  echo 'source ~/.perlbrew/etc/bashrc' >> ~/.bashrc
  source ~/.bashrc
#fi




perlbrew install -v $PERL_INSTALL_VERSION -D ccflags=-fPIC

perlbrew list

perlbrew switch $PERL_INSTALL_VERSION

perlbrew   install-cpanm    

cpanm Mojolicious

mojo version


echo "**End"





