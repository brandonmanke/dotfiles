export NVM_DIR="/Users/ayylmao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Load RVM into a shell session *as a function*

export PATH="$HOME/.yarn/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# added by travis gem
[ -f /Users/ayylmao/.travis/travis.sh ] && source /Users/ayylmao/.travis/travis.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# MongoDB path
# export PATH="$HOME/mongodb/bin:$PATH"
export MONGO_PATH=/usr/local/Cellar/mongodb/3.6.2
export PATH=$PATH:$MONGO_PATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
alias config='/usr/bin/git --git-dir=/Users/ayylmao/.cfg/ --work-tree=/Users/ayylmao'
