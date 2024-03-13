function safari_search() {
  local search_query=""
  
  case "$1" in
    -g)
      shift
      search_query=$(printf "%s+" "$@")
      open -a Safari "https://www.google.com/search?q=${search_query%+}"
      ;;
      
    -yt)
      shift
      search_query=$(printf "%s+" "$@")
      open -a Safari "https://www.youtube.com/results?search_query=${search_query%+}"
      ;;
      
    -lh)
      local port_number="$2"
      open -a Safari "http://127.0.0.1:$port_number"
      ;;
      
    -w)
      search_query="$2"
      open -a Safari "http://${search_query}"
      ;;
      
    *)
      open -a Safari
      ;;
  esac
}

function firefox_search() {
  local search_query=""
  
  case "$1" in
    -g)
      shift
      search_query=$(printf "%s+" "$@")
      open -a Firefox "https://www.google.com/search?q=${search_query%+}"
      ;;
      
    -yt)
      shift
      search_query=$(printf "%s+" "$@")
      open -a Firefox "https://www.youtube.com/results?search_query=${search_query%+}"
      ;;
      
    -lh)
      local port_number="$2"
      open -a Firefox "http://127.0.0.1:$port_number"
      ;;
      
    -w)
      search_query="$2"
      open -a Firefox "http://${search_query}"
      ;;
      
    *)
      open -a Firefox
      ;;
  esac
}
