# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/Library/TeX/texbin
# :/Users/mxmerz/.rbenv/shims
# :/Users/mxmerz/.gem/ruby/1.9.1/bin
# :/Users/mxmerz/.rbenv/versions/1.9.3-p0/bin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="merz"
#ZSH_THEME="merz-fino"
#ZSH_THEME="af-magic"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="half-life"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias tow="gittower ."

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true" # disable for tmux

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git emoji-clock colored-man battery) # textmate brew

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# for octopress rake new_post["..."]
# view http://travisjeffery.com/b/2012/01/zshs-extended-glob-and-octopresss-new-post-script/
alias rake="noglob rake"
