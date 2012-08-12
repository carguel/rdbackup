require 'psych'

module Backup

  # Backup all directories define in a YAML configuration file.
  # The actuel backup is ensured by rdiff-backup command.
  class Application

    # Initialize the instance with a YAML configuration file
    # @param config [String] path to the YAML config file
    def initialize(config)
      @config = Psych.load(File.open(config))
    end

    # Call rdiff-backup for each source directory to backup
    def backup
      @config["backup"].each do |item|
        rc = system("rdiff-backup #{item["directory"]} #{item["server"]["hostname"]}::#{item["server"]["directory"]}")
        raise "rdiff-backup failed" if rc != 0
      end
    end
  end
end
