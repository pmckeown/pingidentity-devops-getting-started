backup --backupAll --doNotEncrypt --backupDirectory /opt/backup/

restore --listBackups --backupDirectory /opt/backup/

restore --backupDirectory /opt/backup/ads-truststore
restore --backupDirectory /opt/backup/changelog
restore --backupDirectory /opt/backup/tasks
restore --backupDirectory /opt/backup/alarms
restore --backupDirectory /opt/backup/config
restore --backupDirectory /opt/backup/replicationChanges
restore --backupDirectory /opt/backup/userRoot
restore --backupDirectory /opt/backup/alerts
restore --backupDirectory /opt/backup/encryption-settings
restore --backupDirectory /opt/backup/schema
