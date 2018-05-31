

## add user key
 - connect as root to server
 - copy the new key under the corresponding user directory in `/var/lib/mercurial-server/repos/hgadmin/keys/users`
 - refresh using `sudo -u hg /usr/local/share/mercurial-server/refresh-auth`
 - user permission can also be managed from a special hg repo apparently
