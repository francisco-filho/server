#!/bin/bash

DOWNLOAD_URL="https://packages.gitlab.com/gitlab/gitlab-ce/packages/el/7/gitlab-ce-11.1.4-ce.0.el7.x86_64.rpm/download.rpm"
DOWNLOAD_DIR=/dados/Downloads
export EXTERNAL_URL="www.example.com"

# instala dependencias
sudo yum install curl policycoreutils openssh-server openssh-clients postfix
sudo systemctl enable sshd
sudo systemctl start sshd
sudo systemctl enable postfix
sudo systemctl start postfix

# baixa rpm
wget -O $DOWNLOAD_DIR/gitlab.rpm $DOWNLOAD_URL

rpm -i $DOWNLOAD_DIR/gitlab.rpm
