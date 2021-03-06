#!/bin/sh -eux

yum -y install https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

yum -y install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install https://yum.theforeman.org/releases/1.15/el7/x86_64/foreman-release.rpm

yum -y install foreman-installer

foreman-installer -v | tee /tmp/foreman-installer.log