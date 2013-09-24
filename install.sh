#!/bin/sh
# FIXME
cp -rf home-dotfiles/* ~

# Set zsh as shell
chsh -s /bin/zsh

# Install powerline patched fonts
sudo cp -rf terminesspowerline /usr/share/fonts
sudo mkfontscale /usr/share/fonts/terminesspowerline
sudo mkfontdir /usr/share/fonts/terminesspowerline
sudo fc-cache -f /usr/share/fonts/terminesspowerline
# Works in fedora. May not work in other distros
sudo ln -s /usr/share/fonts/terminesspowerline /etc/X11/fontpath.d/
echo "Installed terminesspowerline. Please restart X. Make sure your urxvt has --enable-unicode3"

# Set awesome as wm
