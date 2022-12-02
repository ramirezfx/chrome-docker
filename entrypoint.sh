#!/bin/sh

USER=chrome
USERID=1000
echo "creating new $USER with UID $USERID"
useradd -m $USER -u $USERID 
chown -R $USER /home/$USER
cd /home/$USER 
su $USER -c "/usr/bin/google-chrome-stable"
