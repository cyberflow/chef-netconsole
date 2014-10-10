# Encoding: utf-8

module Netconsole
  def self.get_ip_for_node(node, interface)
    if interface.nil?
      service_ip = node['ipaddress']
    else
      service_ip = node['network']['interfaces'][interface]['addresses'].to_hash.find do
        |_, addr_info| addr_info['family'] == 'inet'
      end.first
    end
  end
end
