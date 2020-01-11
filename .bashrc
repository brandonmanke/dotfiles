export NVM_DIR="/Users/brandon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$PATH"

# added by travis gem
[ -f /Users/brandon/.travis/travis.sh ] && source /Users/brandon/.travis/travis.sh

# MongoDB path
# export PATH="$HOME/mongodb/bin:$PATH"
export MONGO_PATH=/usr/local/Cellar/mongodb/3.6.2
export PATH=$PATH:$MONGO_PATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#alias config='/usr/bin/git --git-dir=/Users/brandon/.cfg/ --work-tree=/Users/brandon'
#alias config='/usr/bin/git --git-dir=/Users/brandon/.cfg/ --work-tree=/Users/brandon'

export PATH=/Users/brandon/.deno/bin:$PATH
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
