AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Python" "Java")
export LANGUAGES=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Selecione as linguagens de programação")

AVAILABLE_DBS=("MySQL" "Redis" "PostgreSQL")
SELECTED_DBS="MySQL,Redis"
export DBS=$(gum choose "${AVAILABLE_DBS[@]}" --no-limit --selected "$SELECTED_DBS" --height 5 --header "Selecione o DB(roda no Docker)")