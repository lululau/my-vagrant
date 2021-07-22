#!/bin/bash

cp $MY_VAGRANT_DIR/resources/yum-repo-conf/CentOS-Base.repo /etc/yum.repos.d/
cp $MY_VAGRANT_DIR/resources/yum-repo-conf/epel.repo /etc/yum.repos.d/
cp $MY_VAGRANT_DIR/resources/yum-repo-conf/RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/

yum clean all
yum makecache
