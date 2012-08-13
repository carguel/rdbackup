require 'psych'

module RdBackup

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
        local_dir=item["directory"]
        remote_host=item["server"]["hostname"]
        remote_dir=item["server"]["directory"]

        additional_dir = local_dir.split('/').last

        well_executed = system("rdiff-backup #{local_dir} #{remote_host}::#{remote_dir}/#{additional_dir}")
        raise "rdiff-backup failed" unless well_executed
      end
    end
  end
end
