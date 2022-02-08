#
# Cookbook:: deploy-www-server
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'apache2' do
  action :install
end

file '/var/www/your_domain/index.html' do
  content "Hello, my name is Hakan, today is 02/08/2022. This is the begining, never give up."
  action :create
end

service 'apache2' do
  action [ :enable, :start ]
end
