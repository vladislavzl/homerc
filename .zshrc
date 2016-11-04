# дабы все поддерживало 256 цветов и не портилась цветовая гамма в настройках
export TERM="xterm-256color"

# быстрый выход
alias q='exit'
alias a='sudo apt-get'
alias la='ls -la'

# авторазворот
autoload -U compinit promptinit 
compinit

# меню для перехода по возможным вариантам
setopt menucomplete
# zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# не нужен ввод cd
setopt autocd

# оформление консоли
export PROMPT='%n@%m> '
export RPROMPT='[%~]'

# Последовательность  Описание
# %n  Имя пользователя
# %m  Имя компьютера (до первой точки)
# %M  Полное имя компьютера
# %~  Путь к текущему каталогу относительно домашнего
# %d  Полный путь к текущей директории
# %T  Время в формате HH:MM
# %*  Время в формате HH:MM:SS
# %D  Дата в формате YY-MM-DD
# %B, %b  Начало и конец выделения жирным
# %U, %u  Начало и конец подчеркивания

# чтобы ls работал как find
setopt extendedglob

# исправление нажатий стандартных клавиш
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

## Число команд, сохраняемых в HISTFILE
SAVEHIST=5000

## Чucлo koмaнg, coxpaняeмыx в сеансе
HISTSIZE=5000

# Последовательность !!:2 или !!2 заменяется на второй аргумент последней команды. 
