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

ytmp4() {
  local input="$1"
  local quality="${2:-1080}"
  local url
  local format

  if [[ "$input" == "--help" || "$input" == "-h" || "$input" == "help" || -z "$input" ]]; then
    cat <<'EOF'
Usage:
  ytmp4 <youtube-url-or-id> [quality]
  ytmp4 --help

Examples:
  ytmp4 y9M27lLOhV8
  ytmp4 https://www.youtube.com/watch?v=y9M27lLOhV8
  ytmp4 y9M27lLOhV8 1440
  ytmp4 y9M27lLOhV8 4k
  ytmp4 y9M27lLOhV8 best

Quality:
  1080    Default. Downloads H.264/AAC MP4 for best compatibility.
  1440    Downloads up to 1440p in best available YouTube format.
  4k      Downloads up to 2160p in best available YouTube format.
  best    Downloads the best available video and audio.

Notes:
  1440p, 4k, and best may use AV1 or VP9, which is normal for YouTube.
  If YouTube asks you to sign in, this uses cookies from Chrome.
  Change "chrome" to safari, firefox, brave, or edge if needed.
EOF
    return 0
  fi

  if [[ "$input" == http* ]]; then
    url="$input"
  else
    url="https://www.youtube.com/watch?v=${input}"
  fi

  case "$quality" in
    1080|1080p)
      format="bestvideo[ext=mp4][vcodec^=avc1][height<=1080]+bestaudio[ext=m4a]/best[ext=mp4][vcodec^=avc1][height<=1080]"
      ;;
    1440|1440p)
      format="bestvideo[height<=1440]+bestaudio/best[height<=1440]/best"
      ;;
    4k|2160|2160p)
      format="bestvideo[height<=2160]+bestaudio/best[height<=2160]/best"
      ;;
    best)
      format="bestvideo+bestaudio/best"
      ;;
    *)
      echo "Unknown quality: $quality"
      echo "Run: ytmp4 --help"
      return 1
      ;;
  esac

  yt-dlp --merge-output-format mp4 \
    -o "%(title)s.%(ext)s" \
    -f "$format" \
    --ffmpeg-location /opt/homebrew/bin/ffmpeg \
    --cookies-from-browser chrome \
    "$url"
}


############################
#          Prompt          #
############################
git_branch() {
    branch=$(git symbolic-ref --short HEAD 2> /dev/null)
    if [[ -n $branch ]]; then
        echo "($branch) "
    fi
}

autoload -U colors && colors
setopt PROMPT_SUBST
PS1="%{$fg[blue]%}%n%{$reset_color%}@%{$fg[green]%}%m%{$reset_color%} %{$fg[yellow]%}%~ %{$fg[cyan]%}\$(git_branch)%{$reset_color%}%% "

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

# Added by Antigravity
export PATH="/Users/brandon/.antigravity/antigravity/bin:$PATH"
