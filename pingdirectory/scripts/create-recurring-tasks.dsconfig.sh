#!/usr/bin/env sh

# Create a recurring backup task and schedule it to run at 15 minutes past every hour
# Don't schedule all Pods at the same time - use the pod ordinal to set a different minute in the hour for each pod's backup

dsconfig create-recurring-task \
  --task-name frequentBackupTask \
  --type backup \
  --set retain-previous-full-backup-count:5 \
  --set backup-directory:/opt/backup

dsconfig create-recurring-task-chain \
  --chain-name frequentBackupTaskChain \
  --set recurring-task:frequentBackupTask \
  --set scheduled-date-selection-type:every-day \
  --set 'scheduled-time-of-day:*:15'



         Consider moving to a more secure vault secret.
WARNING: A admin-user-password file found in the legacy secret location '/opt/staging/.sec'
         Consider moving to a more secure vault secret.
WARNING: A encryption-password file found in the legacy secret location '/opt/staging/.sec'
         Consider moving to a more secure vault secret.
WARNING: Unable to write password files to '/run/secrets'
         Using 'tmp/secrets' for now.
Using self signed certificate, CERTIFICATE_NICKNAME set to "server-cert".
Applying custom java properties from java.properties.aarch64

The operation was successful.  The Directory Server commands will use the java arguments and java home specified in
the properties file located in /opt/out/instance/config/java.properties
Custom java properties successfully applied.
Generating /opt/staging/pd.profile/setup-arguments.txt
Running manage_profile setup .....
  /opt/out/instance/bin/manage-profile setup     --profile /opt/staging/pd.profile     --useEnvironmentVariables     --tempProfileDirectory /tmp     -
Server Already Configured
 setup command-line can only be used with Ping Identity Directory Server instances that have not yet been configured.
 The current server:
- Contains preexisting data. Setup will not run on instances with data that has already been imported, as that data
may not be encrypted.
Error during 'manage-profile setup'
Log '/opt/out/instance/logs/tools/manage-profile.log'
Jul 13, 2024 2:06:10 AM com.unboundid.directory.server.tools.ToolUtilities initLogger
INFO: manage-profile was run with the following arguments:  setup --profile /opt/staging/pd.profile --useEnvironmentVariables --tempProfileDirectory /
Jul 13, 2024 2:06:10 AM com.unboundid.directory.server.tools.manageprofile.ManageProfileTool executeTool
INFO: Executing the setup subcommand
Jul 13, 2024 2:06:10 AM com.unboundid.directory.server.tools.manageprofile.ManageProfileSubCommand printlnErrAndLog
SEVERE: Server Already Configured
 setup command-line can only be used with Ping Identity Directory Server instances that have not yet been configured.  The current server:
- Contains preexisting data. Setup will not run on instances with data that has already been imported, as that data may not be encrypted.
Jul 13, 2024 2:06:10 AM com.unboundid.directory.server.tools.manageprofile.ManageProfileSubCommand startPhase
INFO: manage-profile timing: 0.034 seconds for 'Validating arguments and server profile and replacing variables if necessary'
Log '/opt/out/instance/logs/tools/install-ds.log'
cat: can't open '/opt/out/instance/logs/tools/install-ds.log': No such file or directory
CONTAINER FAILURE: Error running 183-run-setup.sh
Stream closed EOF for ping/demo-pingdirectory-0 (pingdirectory)