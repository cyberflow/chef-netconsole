# Encoding: utf-8
# Cookbook Name: netconsole
# Resource: netconsole
# Author: Dmitry Rebryshkin
# Copyright 2014
# License:: Apache 2.0

actions :create

default_action :create if defined?(default_action)

attribute :name, kind_of: String, name_attribute: true
attribute :iface, kind_of: String
attribute :src_port, kind_of: String, default: '6665'
attribute :src_ip, kind_of: String
attribute :tgt_port, kind_of: String, default: '6666'
attribute :tgt_ip, kind_of: String
attribute :tgt_mac, kind_of: String
attribute :level, kind_of: Integer, default: 7
