if { [[ "$DISTRO" == "Ubuntu" ]] && [[ "$MAJOR_VERSION" -le 22 ]]; } || { [[ "$DISTRO" == "LinuxMint" ]] && [[ "$MAJOR_VERSION" -le 21 ]]; }; then  
  echo "Installing terminal applications for older versions of Ubuntu or Linux Mint...VERSION: $MAJOR_VERSION"
  # https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation
  # https://github.com/emmatyping/apt.cli.rs?tab=readme-ov-file#how-to-add-the-repo
  curl -fsSL https://apt.cli.rs/pubkey.asc | sudo tee -a /usr/share/keyrings/rust-tools.asc
  curl -fsSL https://apt.cli.rs/rust-tools.list | sudo tee /etc/apt/sources.list.d/rust-tools.list
  sudo apt update
  sudo apt install -y fzf bat ripgrep zoxide plocate fd-find tldr
else
  echo "Installing terminal applications for newer versions of Ubuntu or Linux Mint...VERSION: $MAJOR_VERSION"
  sudo apt install -y fzf ripgrep bat eza zoxide plocate fd-find tldr
fi
