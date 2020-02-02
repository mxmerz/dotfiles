# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh


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


# Plugins.
source ~/.zplug/init.zsh

# zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'romkatv/powerlevel10k', as:theme, depth:1

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# source plugins and add commands to the PATH
zplug load


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set name of the theme to load.
# ZSH_THEME="merz-fino"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Aliases.
alias tow="gittower ."
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias e="exa"
alias el="exa -l"
alias ela="exa -la"
alias nv="nvim"
alias lg="lazygit"


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
