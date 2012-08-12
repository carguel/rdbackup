require 'spec_helper'
require 'backup'

module Backup

  describe Application do

    context "after loading sample_config.yml" do
      subject { Backup::Application.new(sample_config) }

      it "should call rdiff-backup for each source diretory to backup" do
        subject.should_receive(:system).with("rdiff-backup /var/lib/dir1 backup-server::/var/lib/backup").ordered.and_return(0)
        subject.should_receive(:system).with("rdiff-backup /var/lib/dir2 backup-server::/var/lib/backup").ordered.and_return(0)
        subject.backup
      end

      it "should raise an error whenever rdiff-backup failed" do
        subject.stub(:system) { return 0 }
        lambda {subject.backup}.should raise_error
      end
    end
  end 
end
