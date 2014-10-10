# Encoding: utf-8
#
# Author:: Dmitry Rebryshkin
# Copyright 2014
# License: Apache 2.0
# Cookbook Name:: netconsole
#
#
require 'chef/mixin/shell_out'
require 'chef/mixin/language'
include Chef::Mixin::ShellOut

def load_current_resource
  @iface = new_resource.iface || node['network']['default_interface']
  @src_port = new_resource.src_port
  @src_ip = new_resource.src_ip || Netconsole.get_ip_for_node(node, @iface)
  @tgt_port = new_resource.tgt_port
  @tgt_ip = new_resource.tgt_ip
  @tgt_mac = new_resource.tgt_mac
  @level = new_resource.level
end

action :create do
  nc = nc_vars

  er = execute 'dmesg-level' do
    command "dmesg -n #{nc[:level]}"
    action :run
  end
  new_resource.updated_by_last_action(er.updated_by_last_action?)

  md = modules 'netconsole' do
    options('netconsole' => "#{nc[:src_port]}@#{nc[:src_ip]}/#{nc[:iface]},#{nc[:tgt_port]}@#{nc[:tgt_ip]}/#{nc[:tgt_mac]}")
    action  :load
  end
  new_resource.updated_by_last_action(md.updated_by_last_action?)

end

private

def nc_vars
  nc = {
    iface: @iface,
    src_port: @src_port,
    src_ip: @src_ip,
    tgt_port: @tgt_port,
    tgt_ip: @tgt_ip,
    tgt_mac: @tgt_mac,
    level: @level
  }
  nc
end
