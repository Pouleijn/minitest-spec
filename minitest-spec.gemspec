# -*- encoding: utf-8 -*-
require File.expand_path('../lib/minitest-spec/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michel Pouleijn"]
  gem.email         = ["michel@pouleijn.nl"]
  gem.description   = %q{Add rspec behaviour to minitest}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/Pouleijn/minitest-spec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "minitest-spec"
  gem.require_paths = ["lib"]
  gem.version       = Minitest::Spec::VERSION
  
  gem.add_dependency("minitest", ">= 3.0")
  gem.add_dependency("rake")
end
