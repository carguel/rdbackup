# -*- encoding: utf-8 -*-

require File.expand_path('../lib/backup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "backup"
  gem.version       = Backup::VERSION
  gem.summary       = %q{TODO: Summary}
  gem.description   = %q{TODO: Description}
  gem.license       = "MIT"
  gem.authors       = ["Christophe Arguel"]
  gem.email         = "christophe.arguel@free.fr"
  gem.homepage      = "https://rubygems.org/gems/backup"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.add_dependency 'psych', '~> 1.3.4'
  gem.add_dependency 'thor', '~> 0.15.4'
end
