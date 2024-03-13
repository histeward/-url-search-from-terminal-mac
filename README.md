## A function to make searching things up in the browser easier from the terminal
## For mac currently

```
# to google things up
$ safari_search [-g] <search_query>

# to search things up on youtube
$ safari_search [-yt] <search_query>

# open any website without having to type the https://www.
$ safari_search [-w] <url>

# opening https://127.0.0.1:<port> in the browser if you happen to localhost something in development
$ safari_search [-lh] <port>

```

## Example usage
```
$ safari_search -g slicing in golang
$ safari_search -yt lofi-girl
$ safari_search -w github.com
$ safari_search -lh 8080
```

You could also make an alias for a command that suits you.

```zsh
alias safari="safari_search"
```

## Function for firefox and safari

```zsh
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
```
