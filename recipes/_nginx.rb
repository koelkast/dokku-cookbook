#
# Cookbook Name:: dokku
# Recipe:: _nginx
#
# Copyright (c) 2015 Nick Charlton, MIT licensed.

apt_update "apt-update"
apt_package "nginx"

service "nginx" do
  supports status: true, restart: true, reload: true
  action :start
end
