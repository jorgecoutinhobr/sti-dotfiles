# Verifica se o arquivo /etc/os-release existe
if [ ! -f /etc/os-release ]; then
   echo "Não foi possível identificar a distribuição (arquivo /#etc/os-release não encontrado)."
   exit 1
fi

# Detecta a distribuição
export DISTRO=$(lsb_release -is)
VERSION=$(lsb_release -rs)

# Extrai parte principal da versão (ex: 22 de 22.04)
export MAJOR_VERSION=$(echo "$VERSION" | cut -d. -f1)