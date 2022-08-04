#!/bin/sh

localjekyll="/Users/kellan/proj/laughingmeme"
remotewebroot="/var/www/laughingmeme"
instancehost="laughingmeme.org"
sshuser="root"
sshport="22"
sshidentity="~/.ssh/id_ed25519"

cd $localjekyll
# bundle install
bundle exec jekyll build --config=_config.yml

echo "rsync to SSH host $instancehost ..."

rsync -vrhp -e "ssh -p $sshport -i $sshidentity" --exclude ".*" --delete-after \
  --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
  $localjekyll/_site/ $sshuser@$instancehost:$remotewebroot

echo "SSH connection closed. Done. Committed."


