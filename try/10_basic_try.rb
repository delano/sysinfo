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

## Has architectures
SysInfo.architectures
#=> [:alpha, :arm32, :arm32, :arm64, :arm64, :ia64, :mips, :powerpc, :powerpc, :ppc64, :sparc, :x86, :x86, :x86_64, :x86_64]

## Has implementations
SysInfo.implementations
#=> ["bccwin", "cygwin", "djgpp", "freebsd", "irix", "java", "linux", "mingw", "netbsd", "os2", "osx", "solaris", "vms", "wince", "windows"]

## Has os_families
SysInfo.os_families
#=> ["java", "os2", "unix", "vms", "windows"]
