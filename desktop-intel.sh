# IMPORTANT: If you have errors or older machines, for now, see:
# https://wiki.alpinelinux.org/wiki/Intel_video

# Desktop
setup-desktop sway
setup-devd udev
apk add font-dejavu
apk add neovim

# Video
apk add mesa-dri-gallium
apk add mesa-va-gallium
apk add intel-media-driver

# Seat manager
apk add seatd
rc-update add seatd
service seatd start
adduser $USER seat

mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/
