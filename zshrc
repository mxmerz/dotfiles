# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
# Add TeX.
PATH=$PATH:/Library/TeX/texbin
# Add rust.
PATH=$PATH:~/.cargo/bin
# Add Python.
PATH=$PATH:~/Library/Python/2.7/bin
PATH=$PATH:~/Library/Python/3.7/bin
# Add rumy gems to PATH. (Verify with `gem environment`)
PATH=$PATH:/usr/local/lib/ruby/gems/2.5.0
PATH=$PATH:~/.gem/ruby/2.5.0
PATH=$PATH:/usr/local/Cellar/ruby/2.5.3/lib/ruby/gems/2.5.0
# Add PHP composer vendor bin directory
PATH=$PATH:~/.composer/vendor/bin

export PATH=$PATH

# Set Editor.
export VISUAL=nvim
export EDITOR=$VISUAL

# Set locale.
export LC_ALL=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="merz-fino"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias tow="gittower ."
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias e="exa"
alias el="exa -l"
alias ela="exa -la"
alias nv="nvim"
alias lg="lazygit"


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
plugins=(git emoji-clock colored-man battery)

source $ZSH/oh-my-zsh.sh

# fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export FZF_DEFAULT_COMMAND='fd --type f'

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
