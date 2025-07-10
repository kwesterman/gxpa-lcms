# Depends on dbxcli command: https://github.com/dropbox/dbxcli
git clone https://github.com/kwesterman/gxpa-lcms.git
cd gxpa-lcms
for f in *; do dbxcli put $f /gxpa-lcms/scripts/$f; done
cd ..
rm -rf gxpa-lcms
