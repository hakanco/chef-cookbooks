#
# Cookbook:: install_packages
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

packages = ["git", "python3", "nano"]

[packages].each do |pkg|
  package pkg do
    action :install
    retries 3 
    retry_delay 5
  end
end
