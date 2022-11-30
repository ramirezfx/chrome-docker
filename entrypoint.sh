#!/bin/sh

USER=chrome
USERID=1000
echo "creating new $USER with UID $USERID"
useradd -m $USER -u $USERID 
chown -R $USER /home/$USER
chown -R $USER /Applications/Google-Chrome.AppImage
chgrp -R $USER /Applications/Google-Chrome.AppImage
cd /home/$USER 
su $USER -c "/Applications/Google-Chrome.AppImage --appimage-extract-and-run"
