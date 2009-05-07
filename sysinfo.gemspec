@spec = Gem::Specification.new do |s|
	s.name = "virginia"
  s.rubyforge_project = "virginia"
	s.version = ""
	s.summary = "A short description."
	s.description = s.summary
	s.author = ""
	s.email = ""
	s.homepage = ""
  
  # = DEPENDENCIES =
  # Add all gem dependencies
  #s.add_dependency ''
  
  # = MANIFEST =
  # The complete list of files to be included in the release. When GitHub packages your gem, 
  # it doesn't allow you to run any command that accesses the filesystem. You will get an
  # error. You can ask your VCS for the list of versioned files:
  # git ls-files
  # svn list -R
  s.files = %w(
  CHANGES.txt
  LICENSE.txt
  README.txt
  Rakefile
  virginia.gemspec
  )
  
  # = EXECUTABLES =
  # The list of executables in your project (if any). Don't include the path, 
  # just the base filename.
  s.executables = %w[]
  
  
  s.extra_rdoc_files = %w[README.txt LICENSE.txt]
  s.has_rdoc = true
  s.rdoc_options = ["--line-numbers", "--title", s.summary, "--main", "README.txt"]
  s.require_paths = %w[lib]
  s.rubygems_version = '1.3.0'

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
 
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<RedCloth>, [">= 4.0.4"])
    else
      s.add_dependency(%q<RedCloth>, [">= 4.0.4"])
    end
  else
    s.add_dependency(%q<RedCloth>, [">= 4.0.4"])
  end
  
end