set -e

sti_ascii='
     _______.___________. __  
    /       |           ||  | 
   |   (----`---|  |----`|  | 
    \   \       |  |     |  | 
.----)   |      |  |     |  | 
|_______/       |__|     |__| 
'

echo -e "$sti_ascii"
echo -e "\nIniciando configuracao (ou cancele com ctrl+c)..."

sudo apt-get update -y >/dev/null

echo "Se prepare para fazer algumas escolhas..."
source ~/.local/share/sti-dotfiles/dependencies/gum.sh >/dev/null
source ~/.local/share/sti-dotfiles/install/config/first_choices.sh

source ~/.local/share/sti-dotfiles/dependencies/libs.sh >/dev/null

source ~/.local/share/sti-dotfiles/install/install.sh