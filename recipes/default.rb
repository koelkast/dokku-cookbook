#
# Cookbook Name:: dokku-redux
# Recipe:: default
#
# Copyright (c) 2015 Nick Charlton, MIT licensed.

include_recipe "nginx"

package "apt-transport-https"

docker_service "default" do
  action [:create, :start]
end

packagecloud_repo "dokku/dokku" do
  type "deb"
end

package "dokku"
