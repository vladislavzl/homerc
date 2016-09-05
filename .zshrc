#дабы все поддерживало 256 цветов и не портилась цветовая гамма в настройках
export TERM="xterm-256color"

#быстрый выход
alias q='exit'

#автодополнение
autoload -U compinit promptinit 
compinit
#promptinit хз, чето не работает
# меню для перехода по возможным вариантам
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#не нужен ввод cd
setopt autocd

#исправление нажатий стандартных клавиш
bindkey "^[OB" down-line-or-search
bindkey "^[OC" forward-char
bindkey "^[OD" backward-char
bindkey "^[OF" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[3~" delete-char
bindkey "^[[4~" end-of-line
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^?" backward-delete-char
bindkey '\e[3~' delete-char # del
bindkey ';5D' backward-word # ctrl+left
bindkey ';5C' forward-word #ctrl+right

# хранить историю в указанном файле
export HISTFILE=~/.zsh_history
# максимальное число команд, хранимых в сеансе
export HISTSIZE=5000
export SAVEHIST=$HISTSIZE
# включить историю команд
setopt APPEND_HISTORY
# убрать повторяющиеся команды, пустые строки и пр.
# setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
