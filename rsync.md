## Resume failed scp
`rsync --partial --progress --rsh=ssh local_file user@host:remote_file`

## sync remote system logs
`rsync -avuz --timeout=300 --prune-empty-dirs --exclude=*log_tether.txt --include=*.txt --include=*.log --include=*.cfg --include=mask.png --include=*.tile.jpg --filter="-! */" root@:/data0/D /home/data`

## Home backup
`sudo umount nas events`

`rsync -narv --exclude=.cache --exclude=.aladin  --exclude=.googleearth --exclude=.mozilla --human-readable --progress /home/hadry /media/hadry/HARD_pers_A_11/home_backup/`

`rsync -narv --human-readable --progress /home/data /media/hadry/HARD_pers_A_11/home_backup/`


## /opt backup
`rsync -arv --human-readable --progress --exclude '*anaconda*'  /opt/ /run/media/hadry/data1/opt_backup/`

## slash or no slash?
 - slash on source: only the content of source will be synced
 - all others: the whole directory will be copied
 
