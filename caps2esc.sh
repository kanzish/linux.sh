apk add kbd
(dumpkeys | grep keymaps; echo keycode 58 = Escape) | loadkeys
dumpkmap > us-caps2esc.bmap
gzip us-caps2esc.bmap
mv -iv us-caps2esc.bmap.gz /etc/keymap
