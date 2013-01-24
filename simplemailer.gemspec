# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simplemailer/version'

Gem::Specification.new do |gem|
  gem.name          = "simplemailer"
  gem.version       = Simplemailer::VERSION
  gem.authors       = ["Tamara Temple"]
  gem.email         = ["tamara@tamaratemple.com"]
  gem.description   = %q{simple command line mailer}
  gem.summary       = %q{A simple command line mailer that emulates the old Unix mail(1) command, but doesn't require installation of a huge MTA package}
  gem.homepage      = "https://github.com/tamouse/simplemailer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency("mail")
  gem.add_development_dependency("rspec")
  gem.add_development_dependency("rdoc")
  gem.add_development_dependency("rake", '~> 0.9.2')
end
