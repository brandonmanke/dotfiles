# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/brandon/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/Users/brandon/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/brandon/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/brandon/.fzf/shell/key-bindings.zsh"