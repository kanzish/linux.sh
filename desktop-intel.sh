# IMPORTANT: If you have errors or older machines, for now, see:
# https://wiki.alpinelinux.org/wiki/Intel_video

# Desktop
setup-desktop sway
setup-devd udev
apk add dbus-x11 neovim

mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/

# Browser
apk add flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrebo
flatpak install flathub com.brave.Browser

# Remove firefox
apk del firefox
rm -rf ~/.mozilla

# Video
apk add mesa-dri-gallium
apk add mesa-va-gallium
apk add intel-media-driver

# Audio
apk add alsa-utils
#alsamixer

# Brightness control
apk add brightnessctl
adduser $USER video
echo "ACTION==\"add\", SUBSYSTEM==\"backlight\", RUN+=\"/bin/chgrp video $sys$devpath/brightness\", RUN+=\"/bin/chmod g+w $sys$devpath/brightness\"" | sudo tee /etc/udev/rules.d/backlight.rules

# Seat manager
apk add seatd
rc-update add seatd
service seatd start
adduser $USER seat
