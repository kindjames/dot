if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/jameskind/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=’red’
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

plugins=(
    git
    zsh-completions
    zsh-autosuggestions
)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

alias grep='grep -i --colour=auto'
alias egrep='egrep -i --colour=auto'
alias fgrep='fgrep -i --colour=auto'
alias ls='ls -la'
alias '?'=duck
alias '??'=google
alias '???'=bing
alias x="exit"
alias dot='cd $DOTFILES'
alias scripts='cd $SCRIPTS'
alias snippets='cd $SNIPPETS'
alias free='free -h'
alias df='df -h'
alias top=htop
alias chmox='chmod +x'
alias temp='cd $(mktemp -d)'
alias c='printf "\e[H\e[2J"'
alias clear='printf "\e[H\e[2J"'