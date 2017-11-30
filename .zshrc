# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ad/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/ad/.oh-my-zsh



# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# дабы все поддерживало 256 цветов и не портилась цветовая гамма в настройках
#  export TERM="xterm-256color"
  export TERM="screen-256color"

# чтобы не глючило Ctrl + s
  stty stop undef

# алиасы
  alias q='exit'
  alias a='sudo apt-get'
  alias ai='sudo apt-get install'
  alias la='ls -la'
  alias g='grep'
  alias v='vim'
  alias c='cat'
  alias p='ping'
  alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
  alias ra='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'

# редактор по умолчанию
  export EDITOR=vim

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
  # export PROMPT='%F{blue}%B%n@%m>%b%f '
  # export RPROMPT='[%~]'

  # история директорий (для использования набрать cd -<TAB>)
  DIRSTACKFILE="$HOME/.cache/zsh/dirs"
  if [[ -f $DIRSTACKFILE  ]] && [[ $#dirstack -eq 0  ]]; then
    dirstack=( ${(f)"$(< $DIRSTACKFILE)"}  )
    [[ -d $dirstack[1]  ]] && cd $dirstack[1]
  fi
  chpwd() {
    print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
  }
  DIRSTACKSIZE=30
  setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
  ## Remove duplicate entries
  setopt PUSHD_IGNORE_DUPS
  ## This reverts the +/- operators.
  setopt PUSHD_MINUS

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
  # bindkey '^[[1;2D' backward-word # shift+left
  # bindkey '^[[1;2C' forward-word # shift+right

  bindkey '^[[1;2D' backward-delete-word # shift+left удаляет слово
  bindkey '^[[1;2C' delete-word # shift+right удаляет слово

  bindkey '^[[1;5D' backward-word # ctrl+left
  bindkey '^[[1;5C' forward-word # ctrl+right
  bindkey '^R' history-incremental-search-backward
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


# Чтобы работал Atl + .
bindkey '^[.' insert-last-word

tmux
