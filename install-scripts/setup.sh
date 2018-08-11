#!/bin/bash

#yum -y update

sudo -E yum -y group install "Development Tools"
sudo -E yum -y install curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel asciidoc xmlto docbook2X wget libyaml-devel perl-Digest-SHA postfix libicu-devel libicu cmake gcc wget 

mkdir -p /dados/log/nginx
mkdir -p /dados/conf
mkdir -p /dados/var
