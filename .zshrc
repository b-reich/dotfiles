# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin/:$PATH

# Brew Paths
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
#POWERLEVEL9K_MODE="nerdfont-complete"

HIST_STAMPS="yyyy-mm-dd"

zstyle :omz:plugins:ssh-agent quiet yes
zstyle :omz:plugins:ssh-agent ssh-add-args --apple-use-keychain

plugins=(git pip history-substring-search docker docker-compose colorize vscode git-flow-avh ansible git-auto-fetch command-not-found ssh-agent)

source $ZSH/oh-my-zsh.sh

# compile Flags
export ARCHFLAGS="-arch arm64"

# ssh
#export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias t="todo.sh"

alias vi="vim"
alias vim="vim"

autoload bashcompinit && bashcompinit
autoload -U compinit && compinit

source $(brew --prefix)/etc/bash_completion.d/az

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
