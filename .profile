. "$HOME/.cargo/env"

# ccache
export PATH="/usr/local/opt/ccache/libexec:$PATH"

alias lsusb="system_profiler SPUSBDataType"

alias python=python3
alias p3=python3
alias p2=python2

export PATH="/Users/brandon/.local/bin:$PATH"

export DENO_INSTALL="/Users/brandon/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brandon/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brandon/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brandon/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brandon/google-cloud-sdk/completion.zsh.inc'; fi

# Zig
export PATH="/Users/brandon/.zig/zig-macos-aarch64-0.13.0:$PATH"