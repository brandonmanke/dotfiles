# go
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH/bin

# OCaml
export OCAML_PATH=$(opam env)
export PATH=$PATH:$OCAML_PATH

#yarn
export PATH="$HOME/.yarn/bin:$PATH"

export PATH=/Users/brandon/.deno/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# export PS1="\u@\h:\W\$ " # prompt formatting (uncomment if using bash)
alias docker-stop="docker ps -q | xargs docker stop"

export PATH="/Users/brandon/Library/Python/3.8/bin:$PATH"
