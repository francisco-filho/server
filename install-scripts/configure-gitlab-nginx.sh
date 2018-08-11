#!/bin/bash
#
# Configura gitlab para utilizar nginx
#

# nginx
sed -i "s/^# nginx\['enable'\] = true/nginx['enable'] = false/g" /etc/gitlab/gitlab.rb
sed -i "s/^# web_server\['external_users'\].*$/web_server['external_users'] = ['portal']/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['trusted_proxies'\].*$/gitlab_rails['trusted_proxies'] = ['172.20.0.209']/g" /etc/gitlab/gitlab.rb

# postgres
sed -i "s/^# postgresql\['enable'\].*$/postgresql['enable'] = false/g" /etc/gitlab/gitlab.rb

sed -i "s/^# gitlab_rails\['db_adapter'\].*$/gitlab_rails['db_adapter'] = 'postgresql'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['database'\].*$/gitlab_rails['database'] = 'gitlabhq_production'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['db_encoding'\].*$/gitlab_rails['db_encoding'] = 'utf8'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['db_host'\].*$/gitlab_rails['db_host'] = '127.0.0.1'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['db_port'\].*$/gitlab_rails['db_port'] = '5432'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['db_username'\].*$/gitlab_rails['db_username'] = 'git'/g" /etc/gitlab/gitlab.rb
sed -i "s/^# gitlab_rails\['db_password'\].*$/gitlab_rails['db_password'] = '12345678'/g" /etc/gitlab/gitlab.rb
