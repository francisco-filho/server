#!/usr/bin/env bash 

VERSION="1.15.2"
DOWNLOAD_DIR=/dados/Downloads
NGINX_DIR=$DOWNLOAD_DIR/nginx-$VERSION

# LuaJIT
export LUAJIT_LIB=/usr/local/lib
export LUAJIT_INC=/usr/local/include/luajit-2.0

cd $DOWNLOAD_DIR
git clone http://luajit.org/git/luajit-2.0.git luajit
cd luajit
make && make install

# Nginx Devel Kit
cd $DOWNLOAD_DIR
git clone https://github.com/simplresty/ngx_devel_kit.git nginx_devel_kit

# Lua Nginx Module
cd $DOWNLOAD_DIR
git clone https://github.com/openresty/lua-nginx-module.git lua_nginx_module


# Nginx
wget -O nginx-$VERSION.tar.gz "http://nginx.org/download/nginx-$VERSION.tar.gz"
tar -zxvf nginx-$VERSION.tar.gz
cd $NGINX_DIR

./configure \
    --prefix=/usr/local \
    --conf-path=/dados/conf/nginx.conf \
    --pid-path=/dados/var/nginx.pid \
    --error-log-path=/dados/log/nginx/error.log \
    --http-log-path=/dados/log/nginx/access.log \
    --with-stream                         \
    --with-http_ssl_module                \
    --with-http_v2_module                 \
    --add-module=$DOWNLOAD_DIR/nginx_devel_kit  \
    --add-module=$DOWNLOAD_DIR/lua_nginx_module

#make
#sudo make install
