# backup

Backup local directories to a remote server leveraging rdiff-backup.

## Description

This gem provides an executable script, __backup__, that allows
to backup local directories to a remote server. The actual backup 
operation is ensured by rdiff-backup.
The backup configuration is provided by a YAML file.

## Examples

Example backup configuration:

    server: &backup_server
        hostname: backup-server
        directory: /var/lib/backup
    
    backup:
        - directory: /var/lib/dir1
          server: *backup_server
    
        - directory: /var/lib/dir2
          server: *backup_server


Start a backup according to a given configuration file.

    $ backup go path/to/config.yml

Start a backup considering default configuration (_$HOME/.backup.conf_ otherwise _/etc/backup.conf_)

    $ backup go

## Requirements
rdiff-backup shall be installed on current host and remote host.
Running as root should the preferable option In order to backup system files.

## Install

    $ gem install backup

## Copyright

Copyright (c) 2012 Christophe Arguel

See {file:LICENSE.txt} for details.
