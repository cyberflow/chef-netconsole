# Encoding: utf-8
#
# Cookbook Name:: netconsole
# Recipe:: test
#

netconsole_module 'netconsole' do
  tgt_ip '127.0.0.1'
  tgt_mac '00:00:00:00:00:00'
end
