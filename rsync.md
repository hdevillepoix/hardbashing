## Resume failed scp
`rsync --partial --progress --rsh=ssh local_file user@host:remote_file`


## Home backup
`sudo umount nas events`

`rsync -narv --exclude=.cache --human-readable --progress   /home/ /run/media/hadry/data1/home_backup/`


## /opt backup
`rsync -arv --human-readable --progress --exclude '*anaconda*'  /opt/ /run/media/hadry/data1/opt_backup/`

## slash or no slash?
 - slash on source: only the content of source will be synced
 - all others: the whole directory will be copied
 
