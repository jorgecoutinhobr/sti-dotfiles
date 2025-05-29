sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

for installer in ~/.local/share/sti-dotfiles/install/tools/*.sh; do source $installer; done