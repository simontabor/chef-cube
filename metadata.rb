name             "riot-cube"
maintainer       "Riot Games"
maintainer_email "tcashion@riotgames.com"
license          "Apache 2.0"
description      "Installs/Configures cube"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')).chomp rescue '0.0.1'

%w( centos redhat fedora ubuntu ).each do |os|
  supports os
end

depends "riot-mongodb"
depends "nodejs", "= 1.0.1"
depends "logrotate", "= 0.8.2"
