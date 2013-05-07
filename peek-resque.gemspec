# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peek-resque/version'

Gem::Specification.new do |gem|
  gem.name          = 'peek-resque'
  gem.version       = Peek::Resque::VERSION
  gem.authors       = ['Garrett Bjerkhoel']
  gem.email         = ['me@garrettbjerkhoel.com']
  gem.description   = %q{Take a peek into your Resque queues and workers.}
  gem.summary       = %q{Take a peek into your Resque queues and workers.}
  gem.homepage      = 'https://github.com/peek/peek-resque'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'peek', '>= 0.1.0'
  gem.add_dependency 'resque'
end
