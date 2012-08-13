# -*- encoding: utf-8 -*-

require File.expand_path('../lib/rdbackup/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "rdbackup"
  gem.version       = RdBackup::VERSION
  gem.summary       = %q{Backup local directories to a remote server leveraging rdiff-backup.}
  gem.description   = <<EOD
This gem provides an executable script to backup local directories.
THe actual backup is ensured by rdiff-backup.
The backup configuration is provided by a YAML configuration.
EOD
  gem.license       = "MIT"
  gem.authors       = ["Christophe Arguel"]
  gem.email         = "christophe.arguel@free.fr"
  gem.homepage      = "https://rubygems.org/gems/rdbackup"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'yard', '~> 0.7'
  gem.add_dependency 'psych', '~> 1.3.4'
  gem.add_dependency 'thor', '~> 0.15.4'
end
