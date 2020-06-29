#!/usr/bin/bash

yum -y update
yum install -y emacs-nox nano tree python3
amazon-linux-extras install -y java-openjdk11

systemctl stop postfix
systemctl disable postfix


export IMAGE_GALLERY_BOOTSTRAP_VERSION="1.0"
aws s3 cp s3://edu.au.cc.image-gallery-config/ec2-prod-latest.sh ./
/usr/bin/bash ec2-prod-latest.sh
