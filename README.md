# SysInfo - v0.10

All your system-independent infoz in one handy class.

SysInfo does a takes a very quick glance at the system it's running on and exposes the results as YAML, JSON, CSV, or TSV. It also determines a platform identifier for the system that takes the form: VM-OS-IMPLEMENTATION-ARCHITECTURE.

## Platform Identifier Examples

- ruby-unix-osx-i386
- ruby-unix-osx-powerpc
- ruby-unix-linux-x86_64
- java-win32-windows-i386
- java-win32-mingw-i386

For the complete list of operating systems, implementations and architectures that SysInfo is aware of, see:

* `$ sysinfo os`
* `$ sysinfo impl`
* `$ sysinfo arch`


## Usage -- Library

```ruby
sysinfo = SysInfo.new
sysinfo.vm                    # => ruby
sysinfo.os                    # => unix
sysinfo.impl                  # => osx
sysinfo.arch                  # => i386
sysinfo.platform              # => ruby-unix
sysinfo.to_s                  # => ruby-unix-osx-i386

sysinfo.user                  # => delano
sysinfo.home                  # => /Users/delano
sysinfo.uptime                # => 290.429              (hours)
sysinfo.shell                 # => /bin/bash
sysinfo.paths                 # => [/sbin, /bin, /usr/bin, ...]

sysinfo.hostname              # => walter
sysinfo.ipaddress_internal    # => 10.0.1.2
sysinfo.uptime                # => 290.573655656974
sysinfo.ruby                  # => [1,9,1]
```

## Usage -- Executable

```bash
$ sysinfo
ruby-unix-osx-i386

$ /usr/jruby/bin/sysinfo
java-unix-osx-x86_64

$ sysinfo -f yaml
:vm: :ruby
:os: :unix
:impl: :osx
...
:shell: :"/bin/bash"
:user: delano

$ sysinfo -f json
{"vm":"ruby","os":"unix","impl":"osx", ..., "shell":"\/bin\/bash","user":"delano"}

$ sysinfo -f csv
ruby,unix,osx, ... /bin/bash,delano
```

## Installation

```bash
    $ sudo gem install sysinfo
```


## Prerequisites

* Ruby 1.9+, 2.6.8+, 3.1.4+, or JRuby 1.2+
* [Storable](https://github.com/delano/storable)
