# HISTORY
HISTFILE=$HOME/.history
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '/home/merg/.zshrc'

source ~/.zinit/bin/zinit.zsh

# AUTOLOAD
autoload -Uz colors && colors
autoload -Uz compinit && compinit -u
autoload -Uz promptinit && promptinit
prompt merg
[ "$(uname --nodename)" = "gentoo" ] && autoload prompt gentoo

#PROMPT='%F{#61afef}%n%f@%F{#98c379}%m%f %F{#e06c75}%B%~%b%f%#'
#PROMPT='%F{blue}%n%f@%F{green}%m%f %F{red}%B%~%b%f %#'

# COMPLETION
zstyle ':completion::complete:*' use-cache 1

# VI MODE
bindkey -v
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line
export KEYTIMEOUT=1


# PATH
export PATH=$HOME/.local/bin:$PATH
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export TERM=st-256color
export EDITOR='nvim'
export VISUAL=$EDITOR


zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
zinit light zdharma/history-search-multi-word
zinit light olets/zsh-abbr

zinit ice from"gh-r" as"program"
zinit light junegunn/fzf

# PLUGINS
#source ~/.local/share/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.local/share/zsh/zsh-abbr/zsh-abbr.zsh


alias lf="lfrun"
alias ls="ls --color=auto"

#auto startx
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi



#abbr g="git"
#abbr gc="git clone"
#abbr ea="sudo emerge --ask"
#abbr eu="sudo emerge --unmerge"
#abbr es="sudo emerge --sync"
#abbr eas="sudo emerge -avu system"
#abbr edc="sudo emerge -avt --depclean"
#abbr eud="sudo emerge --update --ask world"
#abbr eug="sudo emerge -avuDN world"
#abbr sv="sudo nvim"



BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
