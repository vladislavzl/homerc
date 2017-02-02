# дабы все поддерживало 256 цветов и не портилась цветовая гамма в настройках
  export TERM="xterm-256color"

# чтобы не глючило Ctrl + s
  stty stop undef

# алиасы
  alias q='exit'
  alias a='sudo apt-get'
  alias ai='sudo apt-get install'
  alias helpdesk='/home/aleksey-afoshin/ownCloud/script/www/helpdesk_rest.py'
  alias la='ls -la'
  alias g='grep'
  alias cdad='cd /media/aleksey-afoshin/AD_SYS/adminsdata'
  alias v='vim'
  alias c='cat'

# авторазворот
  # autoload -U compinit promptinit
  autoload -U compinit && compinit
  # compinit

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
  setopt extended_glob

# Добавляет в историю время выполнения команды.
  setopt extended_history

# История становится общей между всеми сессиями / терминалами.
  setopt share_history

# исправление нажатий стандартных клавиш, нах не нужно и так все работает
  # bindkey "^[OB" down-line-or-search
  # bindkey "^[OC" forward-char
  # bindkey "^[OD" backward-char
  # bindkey "^[OF" end-of-line
  # bindkey "^[OH" beginning-of-line
  # bindkey "^[[1~" beginning-of-line
  # bindkey "^[[3~" delete-char
  # bindkey "^[[4~" end-of-line
  # bindkey "^[[5~" up-line-or-history
  # bindkey "^[[6~" down-line-or-history
  # bindkey "^?" backward-delete-char
  # bindkey '\e[3~' delete-char # del
  # bindkey ';5D' backward-word # ctrl+left
  # bindkey ';5C' forward-word #ctrl+right

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

# Последовательность !!:2 или !!2 заменяется на второй аргумент последней команды. 

export NVM_DIR="/home/ad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
