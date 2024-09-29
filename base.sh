# Core packages
apk update
apk add doas pciutils
apk add build-base
apk add nano nano-syntax
apk add curl tmux

# Git
apk add git
git config --global init.defaultBranch main

# Fonts
apk add terminus-font
setfont /usr/share/consolefonts/ter-132n.psf.gz
rc-update add consolefont boot
