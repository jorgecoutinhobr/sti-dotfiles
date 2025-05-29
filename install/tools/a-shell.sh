[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
 cp ~/.local/share/sti-dotfiles/install/config/bash/bashrc ~/.bashrc

 source ~/.local/share/sti-dotfiles/install/config/bash/shell

 [ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/sti-dotfiles/install/config/bash/inputrc ~/.inputrc
