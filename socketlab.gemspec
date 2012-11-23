# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'socketlab/version'

Gem::Specification.new do |gem|
  gem.name          = "socketlab"
  gem.version       = Socketlab::VERSION
  gem.authors       = ["amardaxini"]
  gem.email         = ["amardaxini@gmail.com"]
  gem.description   = %q{Ruby Wrapper Of Socketlabs API}
  gem.summary       = %q{Ruby Wrapper Of Socketlabs API}
  gem.homepage      = "https://github.com/amardaxini/socketlab"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency('httparty')
end
