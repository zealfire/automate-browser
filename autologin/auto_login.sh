#/bin/bash
# Enter username and password for specific account for this script to work
[ ! $# -eq 2 ] && exit 0
sudo kcpassword $2
sudo /usr/bin/defaults write /Library/Preferences/com.apple.loginwindow autoLoginUser $1
exit 0
