if [[ -v LANGUAGES ]]; then
  languages=$LANGUAGES
else
  AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Python" "Java")
  languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Selecione as linguagens de programação")
fi

if [[ -n "$languages" ]]; then
  for language in $languages; do
    case $language in
    Ruby)
      mise use --global ruby@latest
      mise x ruby -- gem install rails --no-document
      ;;
    Node.js)
      mise use --global node@lts
      ;;
    Python)
      mise use --global python@latest
      ;;
    Java)
      mise use --global java@latest
      mise use --global maven@latest
      ;;
    esac
  done
fi