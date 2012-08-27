# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sunspot_with_activeuuid/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Blanco"]
  gem.email         = ["daniel.blancorojas@gmail.com"]
  gem.description   = %q{UUID ids for sunspot}
  gem.summary       = %q{Extends sunspot to be compatible with activeuuid}
  gem.homepage      = "https://github.com/DanielBlanco/sunspot_with_activeuuid"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sunspot_with_activeuuid"
  gem.require_paths = ["lib"]
  gem.version       = SunspotWithActiveuuid::VERSION

  gem.add_development_dependency "rspec"
  
  gem.add_runtime_dependency "activeuuid"
  gem.add_runtime_dependency "uuid_helper"
end
