# Created by newuser for 5.8
autoload -U compinit; compinit
setopt autocd autopushd
zstyle ':completion:*' menu select
zmodload zsh/complist

# History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# Powerlevel10k
source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Alias
alias ls="ls -a --color=auto"
alias ...="cd ../.."
alias wifi="nmcli device wifi connect"
alias poweroff="poweroff 2> /dev/null || sudo systemctl poweroff"

# vi mode
bindkey -v

# Delete Key Fix
bindkey -v "^[[P" delete-char
export DISPLAY=$(grep nameserver /etc/resolv.conf | awk '{print $2}'):0.0
