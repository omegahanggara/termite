# Termite

### What is Termite?
Termite is a advance bash script to backup databases and files with advanced logging system.

### Main features
  * Termite will backup databases separately. So it wont make a huge database dump, instead it will pick one database and backup it. And so for files backup. Files backup will pick main folder instead root folder.
  * Termite has advance logging system. It will log any backup proccesses with it's datail. Just name it, date, md5 checksum, sha1 checksum, and manymore!
  * Termite will report backup activity to your email address, so any backup processes, failures, changes, include log files for more investigation.

### How does it works?
Basically, Termite will run as cron job. You can set the frequention of any activity! Termite is like a termite, it's actually so many scripts which works together to make a goal! No worries of loss data! You need 2 servers here, first the server who want to be backup-ed frequently (this is your main server), second is the server who store all backup-ed files (this is your secondary server). So just in case, your main server is totaled, you can easilly restore your previous backup-ed files and databases using Termite!

### Explanation of its work
There are two main scripts here. First for backup, and second for restore. So let's start from backup.

#### Backup Script
  * Termite will be configured for cron job (this is installation session)
  * Termite will find any database, and you'll be asked for some information of your database, such as engine, user, and password. Don't worry, we keep your privacy (this is installation session)
  * Termite will ask you which files or folders to be backuped. It'll tell you if path is invalid (this is installation session)
  * Termite will ask you where the backup-ed files or database to be stored (this is installation session)
  * Termite will ask you some informations of secondary server (this is installation session)
  * Termite will ask your email address to send the reports (this is installation session)
  * Termite will start now, first it will listing available database. Then backup those one by one, then save the backup.
  * Termite will send you backup databases reports.
  * Termite will listing folders and files to be backuped. Then backup those one folder by one folder, then save the backup
  * Termite will send you backup files reports.

#### Restore Script
Comming soon

### What to be noted?
  * At now, termite will only available on debian based server. But I will try to make it works on other linux ditributions.
  * At now, termite will only backup MySQL database (lack of compability). But, I will try to make it works on other database drivers.
  * At now, termite will be ran as ROOT, this is for handling permission problems (just in case). But I will try make an Artificial Intelegent to learn your system, so it can fix permission problems with non-root user (instead running this script as root)

### TO DO
  1. Make backup script
  2. Make restore script
  3. Make configuration files
  4. Make installation script
  5. More to come


 ### Developer(s) 
  1. Omega Hanggara <hanggara33@gmail.com>
