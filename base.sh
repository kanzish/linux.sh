# Core packages
apk update
apk add doas pciutils
apk add build-base
apk add curl tmux
sh ./caps2esc.sh

# Git
apk add git
git config --global init.defaultBranch main

# Fonts
apk add terminus-font
setfont /usr/share/consolefonts/ter-132n.psf.gz
rc-update add consolefont boot
