# Core packages
apk update
apk add doas pciutils
apk add build-base
apk add curl tmux
sh ./caps2esc.sh

# Power management
apk add tlp
rc-update add tlp
rc-service tlp start

# Git
apk add git
git config --global init.defaultBranch main

# Fonts
apk add terminus-font
setfont /usr/share/consolefonts/ter-132n.psf.gz
rc-update add consolefont boot
