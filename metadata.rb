name             'netconsole'
maintainer       'Webzilla'
maintainer_email 'dmitry.r@cyberflow.net'
license          'Apache v2.0'
description      'Configures netconsole'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

%w(debian ubuntu).each do |os|
  supports os
end

depends 'modules'
