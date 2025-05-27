#!/bin/bash

# Devido a um problema de compatibilidade no ubuntu => 22 e no mint => 21 alguns pacotes não estão mais disponíveis.

# Verifica se o arquivo /etc/os-release existe
if [ ! -f /etc/os-release ]; then
    echo "Não foi possível identificar a distribuição (arquivo /#etc/os-release não encontrado)."
   exit 1
fi

# Detecta a distribuição
DISTRO=$(lsb_release -is)
VERSION=$(lsb_release -rs)

# Extrai parte principal da versão (ex: 22 de 22.04)
MAJOR_VERSION=$(echo "$VERSION" | cut -d. -f1)

if [[ "$DISTRO" == "Ubuntu" ]] && [[ "$MAJOR_VERSION" -ge 22 ]] || [[ "$DISTRO" == "LinuxMint" ]] && [[ "$MAJOR_VERSION" -ge 21 ]]; then
	sudo apt install -y fzf ripgrep zoxide plocate tldr
else
    sudo apt install -y fzf ripgrep bat eza zoxide plocate fd-find tldr
fi