# Alpine Linux - Minimalist daily driver and universal operating system setup guide

## Why Alpine Linux
- Extremely lightweight
- Fast, secure boot
- Works on modern and ancient machines as well as edge and embedded devices

## Cons
- Uses musl not GNU
- Some basic things like bluetooth and audio require much more setup

# Installing Alpine Linux
**Time estimate:** 15-45min

These are the exact steps I take when installing Alpine on a laptop or desktop I intend to use for work and play. Most of the time is spent waiting for the system to install and encrypt

- Burn Alpine Linux to USB
  - I formatted my drive with Ventoy, which lets you store/boot multiple ISO files while still being using the USB for storing other files (https://www.ventoy.net/en/index.html)
  - I then added Alpine Linux Standard x86_64 ISO to the USB (https://www.alpinelinux.org/downloads/)
- I then booted into Alpine Linux, selecting grub2 within the Ventoy bootloader
- After it boots, I typed `root` in the "localhost login" shell (no password needed)
- I then typed `setup-alpine` to start setup
  - Setup Keyboard: Typed `us` for keyboard layout and `us` for variant
  - Setup hostname: Used default `localhost`
  - Interface: typed `wlan0` to setup wifi
    - then selected my network
    - then typed the password
    - used default `dhcp` for IP address
    - typed `done` as I did not need to setup an ethernet
    - typed default 'n' for setting up manual config
  - Root password: typed a root password twice
  - Timezone: typed `US/` (with a slash) then my timezone `Pacific`
  - Proxy: used default `none`
  - Network Time Protocol: typed `busybox` instead of the default `chrony` since it's more lightweight
  - APK Mirror: typed `r` for random one
  - User: typed a username
    - retyped username as full name
    - typed password twice
    - used default 'none' for ssh key/url
    - used default `openssh` for ssh server
  - Disk & Install
    - Typed `nvme0n1` for the disk to use (my default one)
    - typed `crypt` for how I'd like to use it (meaning encrypted)
    - typed 'sys' for how I'd like to use it (it asks you this twice if you select crypt first time)
    - Wait for system to load into memory
    - typed `y` for "Erase the above disks and continue"
    - typed my harddrive encryption password twice
    - type harddrive encryption a third time to actually unlock the drive prior to installing
    - Wait for system to install
  - Type `reboot` to finish and reboot the system 🎉

# Bookmarks
- https://sahajsarup.com/a-tale-of-running-modern-linux-on-hardware-from-1997/

# Todo
- Add screenshots
