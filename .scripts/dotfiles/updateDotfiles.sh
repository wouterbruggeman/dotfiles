#!/bin/sh

DOT_DIR="/home/wouter/projects/private/dotfiles"

#Copy all dotfiles to the right directory in the dotfiles repo folder
cp ~/.zshrc $DOT_DIR/.zshrc
cp $XDG_CONFIG_HOME/user-dirs.dirs $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/xorg $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/polybar $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/i3 $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/g810-led $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/gtk-2.0 $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/gtk-3.0 $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/compton $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/htop $DOT_DIR/.config/
cp -r $XDG_CONFIG_HOME/neofetch $DOT_DIR/.config/
cp $XDG_CONFIG_HOME/vim/vimrc $DOT_DIR/.config/vim/vimrc

#Copy zsh files but add an empty placeholder file for the work related stuff 
cp -r $XDG_CONFIG_HOME/zsh $DOT_DIR/.config/
rm $DOT_DIR/.config/zsh/work
touch $DOT_DIR/.config/zsh/work

#Copy all scripts to the right directory
cp -r ~/.scripts $DOT_DIR/

#Copy all screenlayouts to the right directory
cp -r ~/.screenlayout $DOT_DIR/

#Copy all other config files to the right directory
cp /etc/default/grub $DOT_DIR/etc/default/grub
cp /etc/locale.conf $DOT_DIR/etc/locale.conf
cp /etc/hostname $DOT_DIR/etc/hostname
cp /etc/hosts $DOT_DIR/etc/hosts
cp /etc/mkinitcpio.conf $DOT_DIR/etc/mkinitcpio.conf
cp /etc/fstab $DOT_DIR/etc/fstab
cp /etc/iptables/iptables.rules $DOT_DIR/etc/iptables/iptables.rules
cp -r /etc/modprobe.d $DOT_DIR/etc/
cp -r /etc/X11/xorg.conf.d $DOT_DIR/etc/
cp /etc/systemd/logind.conf $DOT_DIR/etc/systemd/logind.conf

#Copy all background images to the dotfiles directory
cp -r /home/wouter/media/backgrounds $DOT_DIR/media

echo "Done!"
