# meleu's .bash_function
########################

# private stuff
if [ -f "${HOME}/.bash_functions_private" ]; then
  source "${HOME}/.bash_functions_private"
fi


urlencode() {
  local LC_ALL=C
  local string="$*"
  local length="${#string}"
  local char

  for (( i = 0; i < length; i++ )); do
    char="${string:i:1}"
    if [[ "$char" == [a-zA-Z0-9.~_-] ]]; then
      printf "$char" 
    else
      printf '%%%02X' "'$char" 
    fi
  done
  printf '\n' # opcional
}


urldecode() {
  local encoded="${*//+/ }"
  printf '%b' "${encoded//%/\\x}"
}


launch() {
  local args="$@"

  case "$OSTYPE" in
    "cygwin"*)
      cygstart "$args"
      ;;
    "darwin"*) # MacOS
      open "$args"
      ;;
    *)
      xdg-open "$args"
      ;;
  esac
}


google() {
  local terms
  terms="$(urlencode $@)"
  launch "https://www.google.com/search?q=${terms}"
}

