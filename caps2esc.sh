(dumpkeys | grep keymaps; echo keycode 58 = Escape) | loadkeys
dumpkmap > us.bmap
gzip us.bmap
mv us.bmap.gz us.bmap.gz.backup
mv -iv us.bmap.gz /etc/keymap
