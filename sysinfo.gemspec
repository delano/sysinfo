Gem::Specification.new do |s|
  s.name        = "sysinfo"
  s.version     = "0.10.0"
  s.summary     = "All your system-independent infoz in one handy class."
  s.description = "SysInfo: #{s.summary}"
  s.author      = "Delano Mandelbaum"
  s.email       = "gems@solutious.com"
  s.homepage    = "https://github.com/delano/sysinfo"  # replace with actual URL
  s.license     = "MIT"  # replace with actual license

  s.executables = %w[sysinfo]

  s.add_dependency 'storable', '~> 0.10'
  s.add_dependency 'drydock', '<1.0'

  s.files = %w(
    LICENSE.txt
    README.md
    bin/sysinfo
    lib/sysinfo.rb
    sysinfo.gemspec
  )

  s.required_ruby_version = '>= 2.6.8'
end
