source ~/.profile

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ytmp3() {
  local input="$1"
  local url

  if [[ "$input" == http* ]]; then
    url="$input"
  else
    url="https://www.youtube.com/watch?v=${input}"
  fi

  yt-dlp --extract-audio --audio-format mp3 \
    -o "%(title)s.%(ext)s" \
    -f bestaudio \
    --ffmpeg-location /opt/homebrew/bin/ffmpeg \
    "$url"
}

# DEBUG
#PS4='+ %D{%s.%6.} %N:%i> '
#exec 3>&2 2>/tmp/zshstart.$$.log
#setopt xtrace prompt_subst

############################
#          Prompt          #
############################

git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]];
    then
        :
    else
        echo '('$branch') '
    fi
}

autoload -U colors && colors
setopt PROMPT_SUBST
PS1="%{$fg[blue]%}%n%{$reset_coloe%}@%{$fg[green]%}%m%{$reset_color%} %{$fg[yellow]%}% %}%~ %{$fg[cyan]%}\$(git_branch)%{$reset_color%}%% "


# opam configuration
[[ ! -r /Users/brandon/.opam/opam-init/init.zsh ]] || source /Users/brandon/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bun completions
[ -s "/Users/brandon/.bun/_bun" ] && source "/Users/brandon/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# haskell
[ -f "/Users/brandon/.ghcup/env" ] && . "/Users/brandon/.ghcup/env" # ghcup-env

# DEBUG
# unsetopt xtrace
# exec 2>&3 3>&-
