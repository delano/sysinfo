Gem::Specification.new do |s|
  s.name        = "sysinfo"
  s.version     = "0.9.0-RC1"
  s.summary     = "SysInfo: All your system-independent infoz in one handy class. "
  s.description = s.summary
  s.author      = "Delano Mandelbaum"
  s.email       = "delano@solutious.com"
  s.homepage    = "https://github.com/username/sysinfo"  # replace with actual URL
  s.license     = "MIT"  # replace with actual license

  s.executables = %w[sysinfo]

  s.add_dependency 'storable', '0.10.pre.RC1'
  s.add_dependency 'drydock', '<1.0'

  s.files = %w(
    CHANGES.txt
    LICENSE.txt
    README.rdoc
    Rakefile
    bin/sysinfo
    lib/sysinfo.rb
    sysinfo.gemspec
  )
end
