maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Installs/Configures tomcat"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.12.12"
name             "tomcat"

%w{ java logrotate ark }.each do |cb|
  depends cb
end

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end

recipe "tomcat::default", "Installs and configures Tomcat"
