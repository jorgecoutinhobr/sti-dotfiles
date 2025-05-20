# sti-dotfiles

Este projeto automatiza a configuração de um ambiente de desenvolvimento para Linux/WSL. Ele instala e configura ferramentas essenciais, shells, aliases, bancos de dados em Docker e linguagens de programação, tudo de forma interativa e personalizada.

## Como usar

1. **Pré-requisito:** Tenha o `git` instalado.
2. **Clone o repositório:**
   ```sh
   git clone https://github.com/jorgecoutinhobr/sti-dotfiles.git ~/.local/share/sti-dotfiles
   ```
3. **Inicie a configuração:**
   ```sh
   source ~/.local/share/sti-dotfiles/setup.sh
   ```
   Siga as instruções interativas para escolher linguagens e bancos de dados.

## Ferramentas instaladas

- **Shell e utilitários:**
  - bash customizado
  - [fzf](https://github.com/junegunn/fzf)
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [bat](https://github.com/sharkdp/bat)
  - [eza](https://github.com/eza-community/eza)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [fd](https://github.com/sharkdp/fd)
  - [tldr](https://github.com/tldr-pages/tldr)
  - [gum](https://github.com/charmbracelet/gum)
- **Gerenciador de versões:**
  - [mise](https://github.com/jdx/mise)
- **Docker e ferramentas:**
  - [Docker](https://www.docker.com/)
  - [lazydocker](https://github.com/jesseduffield/lazydocker)
- **Bancos de dados (via Docker):**
  - MySQL
  - PostgreSQL
  - Redis
- **Linguagens de programação (via mise):**
  - Ruby (Rails)
  - Node.js
  - Python
  - Java (e Maven)

## Links úteis

- [Como usar WSL com JetBrains](https://www.jetbrains.com/help/idea/how-to-use-wsl-development-environment-in-product.html#create_project_for_wsl)