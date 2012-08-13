gem 'rspec', '~> 2.4'
require 'rspec'
require 'rdbackup/version'

#include Backup
def sample_config
  File.join(File.dirname(__FILE__), "sample_config.yml")
end
