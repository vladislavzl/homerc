" показать статусную строку в две строки
  " set laststatus=2

  
" хранить больше истории команд"
  set history=999 

" перемежение между абзацами при помощи [  ]
  map [ {
  map [ {
  map ] }

" выход из режима ввода в терминале по Esc
  tnoremap <Esc> <C-\><C-n>
  " autocmd TermOpen * setlocal scrollback=100000 modifiable
  autocmd TermOpen * setlocal scrollback=100000 
  set scrollback=100000
  set shell=/bin/bash

" цветовая схема
"  colorscheme gruvbox
  set background=dark

" по нажатию non убираем номера строк и полоску сжатия текста (тормозит при
" поиске)
  " map non :call Non()<CR> 

" ---управление окнами
  "разделить окно
  map <C-w>v :sp<CR>
  map <C-w>h :vsp<CR>
  imap <C-w>v :sp<CR>
  imap <C-w>h :vsp<CR>

  set completeopt=menuone,longest,preview,noinsert

" ---управление панелями
  "создать новую панель
  nnoremap <C-w>t :tabnew<CR>
  inoremap <C-w>t <Esc>:tabnew<CR>
  "переместиться в следущую панель
  nnoremap <C-w><PageUp> :tabnext<CR>
  "переместиться в предыдущую панель
  nnoremap <C-w><PageDown> :tabprev<CR>

" выход двойное нажатие qq
  map qq :q<CR>

" плагин для создания файлов по шаблону
  " autocmd BufNewFile *.py source ~/.vim/ftplugin/python.vim
  " autocmd BufNewFile index.html source ~/.vim/ftplugin/html.vim
  autocmd BufNewFile *.sh :0 put='#!/bin/bash'
  autocmd BufNewFile *.py :0 put='#!/usr/bin/env python'
  autocmd BufNewFile *.py :1 put='# -*- coding: utf8 -*-'
  autocmd BufNewFile *.pl :0 put='use strict;'

" Сохранение позиции курсора
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" вызов :echo Non()
function Non()
  set norelativenumber
  set nonumber
  set foldcolumn=0 
endfunction

function AdFoldingSintax()
  set foldenable
  set foldmethod=syntax
  syn region CodeBlock start=/{/ end=/}/ transparent fold
  " syn region Comment start=/\/\*/ end=/\*\// fold
endfunction

" перемещение при помощи ctrl и стрелки
  map ^[[[D b
  map ^[[[C e
  map ^[[[4~ ^^
  map ^[[[1~ $$
  map <S-Left> b
  map <S-Right> e

" Ctrl/Shift + стрелка вниз/вверх
  map <C-Up> 5k
  map <C-Down> 5j
  imap <S-Up> <Esc>5k
  imap <S-Down> <Esc>5j
  map <S-Up> 5k
  map <S-Down> 5j

" НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ ТЕКСТА (фолдинг)
  "" set foldenable " включить фолдинг
  set foldmethod=syntax " определять блоки на основе синтаксиса файла
  set foldmethod=indent " определять блоки на основе отступов
  set foldcolumn=3 " показать полосу для управления сворачиванием
  set foldlevel=999 " Первый уровень вложенности открыт, остальные закрыты
  " set foldopen=all " автоматическое открытие сверток при заходе в них
  " set tags=tags\ $VIMRUNTIME/systags " искать теги в текущй директории и в указанной (теги генерируются ctags)

" меню При авто-дополнении в командной строке над ней выводятся возможные варианты
  set wildmenu
  set wcm=<C-Z>
  amenu 10.310 &MyMenu.&folding_tab     :set foldmethod=indent<CR>
  amenu 10.320 &MyMenu.&folding_sintax  :call AdFoldingSintax()<CR>
  map <F3> :emenu MyMenu.<C-Z>

" сохранения маркеров файлов
  " set viminfo='1000,f1
  " set viminfo+=n~/.vim/viminfo
  set viminfo+='1000,n~/.vim/nviminfo

" переходить на редактирование в конец строки  
  map a A

" Показывать положение курсора всё время.
  set ruler

" Показывать незавершённые команды в статусбаре
  set showcmd

" как долго будет ожидать следующую команду.. пока не въехал, хуета какая-от..
  set mat=2

" вырезает одно слово под курсором (можно использовать как удаление)
"   map x diw
"
" скопировать слово
"   map c yiw

" Подсветка текущей строки
  set cursorline

" использовать 256 цветов.
"	set term=xterm-256color

" номерав строк
  " абсолютная нумерация
	set number
  " относительная нумерация
  set relativenumber

" табуляция
  " в режиме вставки заменяет символ табуляции на соответствующее количество пробелов.
    set expandtab
  " количество пробелов, которые заменяют табуляцию
    set tabstop=2
    set ts=2
  "табуляция через >> <<
    set shiftwidth=2
  "табуляция через tab
    set smarttab

" поиск
" Включить игнорирование регистра при поиске
  set ignorecase 
  set hlsearch
" поиск по всему файлу
  set incsearch
" подсветка синтаксиса
  syntax on

" Сохранить файл по <F2>, работает в termux.
  nmap <F2>  :w!<CR>
  imap <F2>  <Esc>:w!<CR>
  vmap <F2>  <Esc>:w!<CR>

" управление плагинами
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')
   Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
  "автодополнение 
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " поддержка с++  не работает
  " Plug 'zchee/deoplete-clang'
  " " для поддержки headers в c++
  " Plug 'Shougo/neoinclude.vim'
  "доставляет скобки.
  Plug 'jiangmiao/auto-pairs'
  " синтаксис puppet
  Plug 'puppetlabs/puppet-syntax-vim'
  "калькулятор
  Plug 'sk1418/HowMuch'
  "показывает классы функции,в общем еще не заценил, вызывается по Ctrl-b
  "(необходимо установть ctags sudo apt-get install ctags) в общем нах не нужен
  "говноплагин, отстой, нах не работает, но лучше походу не придумали.((
  Plug 'majutsushi/tagbar'
  " плагин для html верстки
  Plug 'mattn/emmet-vim'
  "для коментирования кода, вполне ахуенный плагин (только работает через раз)
  Plug 'scrooloose/nerdcommenter'
  "внешний вид, пока не разобрался
  Plug 'vim-airline/vim-airline'
  " цветоапя схема
  Plug 'mhartington/oceanic-next'
  " perl omni
  Plug 'c9s/perlomni.vim'
  Plug 'majutsushi/tagbar'
  Plug 'saltstack/salt-vim'
  " Плагин для Wiki
  Plug 'vimwiki/vimwiki' , { 'branch': 'dev' }
call plug#end() 

" Настройки для wiki
  let g:vimwiki_folding='syntax'

" TagList настройки majutsushi/tagbar
  map <C-b> :TagbarToggle<CR>
  let g:tagbar_sort = 0
  let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" показать дерево файлов
   map <C-o> :NERDTreeToggle<CR>

  " плагин для цветовой схемы
  if (has("termguicolors"))
     set termguicolors
   endif
  let g:airline_theme='oceanicnext'
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  syntax enable
  colorscheme OceanicNext

" nerdcommenter
  filetype on
  filetype plugin on
  filetype plugin indent on
  "пробел после символа коментирования 
  let g:NERDSpaceDelims = 1
  " Use compact syntax for prettified multi-line comments
  let g:NERDCompactSexyComs = 1
  " Align line-wise comment delimiters flush left instead of following code
  " indentation
  let g:NERDDefaultAlign = 'left'
  " Set a language to use its alternate delimiters by default
  let g:NERDAltDelims_java = 1
  " Add your own custom formats or override the defaults
  let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
  " Allow commenting and inverting empty lines (useful when commenting a
  " region)
  let g:NERDCommentEmptyLines = 1
  " Enable trimming of trailing whitespace when uncommenting
  let g:NERDTrimTrailingWhitespace = 1
  "коментирование по сочетанию клавиш Ctrl-d
  map <C-d> <leader>c<space>
  imap <C-d> <leader>c<space>

  " автодополнеиние
  let g:deoplete#enable_at_startup = 1

" тут я опишу некоторые полезные сочетания клавиш
" gd - переход к локальной инициализации переменной
" gD - переход к инициализации глобальной переменной
" gi - перейти к последнему месту редактирования
" '. - перейти к последнему месту редактирования
" :%g/^ /-1j - все строки что начинаются с пробела, объединить с предыдущими
" J - объединить строку со следующей
" Crtl + R "  - вставит текст в режиме редактирования
" :help object-motions - примеры переходов
" vip - удалить тескт между (  )
" :noh - снять выделение поиска
" UltiSnips – поддержка шаблонов кода.
" :BufExplorer - просмотр списка буферов
" :g//d - удалить выденные строки
