require_relative '../lib/sysinfo'

require 'yaml'
require 'json'


## Can output platform as a string
si = SysInfo.new
si.platform
#=> 'ruby-unix-osx-arm64'

## Can output platform as json
si = SysInfo.new
output = si.dump(:json)
parsed = JSON.parse(output)
parsed.keys.sort
#=> ["arch", "home", "hostname", "impl", "ipaddress_internal", "os", "paths", "ruby", "shell", "tmpdir", "uptime", "user", "vm"]

## Can output platform as yaml
si = SysInfo.new
output = si.dump(:yaml)
parsed = YAML.load(output)
parsed.keys.sort
#=> [:arch, :home, :hostname, :impl, :ipaddress_internal, :os, :paths, :ruby, :shell, :tmpdir, :uptime, :user, :vm]
