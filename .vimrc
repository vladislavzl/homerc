" маппинг русской раскладки
  map й q
  map ц w
  map у e
  map к r
  map е t
  map н y
  map г u
  map ш i
  map щ o
  map з p
  map х [
  map ъ ]
  map ф a
  map ы s
  map в d
  map а f
  map п g
  map р h
  map о j
  map л k
  map д l
  map ж ;
  map э '
  map я z
  map ч x
  map с c
  map м v
  map и b
  map т n
  map ь m
  map б ,
  map ю .
  map Й Q
  map Ц W
  map У E
  map К R
  map Е T
  map Н Y
  map Г U
  map Ш I
  map Щ O
  map З P
  map Х {
  map Ъ }
  map Ф A
  map Ы S
  map В D
  map А F
  map П G
  map Р H
  map О J
  map Л K
  map Д L
  map Ж :
  map Э "
  map Я Z
  map Ч X
  map С C
  map М V
  map И B
  map Т N
  map Ь M
  map Б <
  map Ю >

" показать статусную строку в две строки
  set laststatus=2

" перемещение при помощи ctrl и стрелки
  map ^[[[D b
  map ^[[[C e
  map <S-Left> b
  map <S-Right> e

" Ctrl/Shift + стрелка вниз/вверх
  map <C-Up> 5k
  map <C-Down> 5j
  imap <S-Up> <Esc>5k
  imap <S-Down> <Esc>5j
  map <S-Up> 5k
  map <S-Down> 5j

"НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ ТЕКСТА (фолдинг)
  "" set foldenable " включить фолдинг
  set foldmethod=syntax " определять блоки на основе синтаксиса файла
  set foldmethod=indent " определять блоки на основе отступов
  set foldcolumn=3 " показать полосу для управления сворачиванием
  set foldlevel=999 " Первый уровень вложенности открыт, остальные закрыты
  " set foldopen=all " автоматическое открытие сверток при заходе в них
  " set tags=tags\ $VIMRUNTIME/systags " искать теги в текущй директории и в указанной (теги генерируются ctags)

" переходить на редактирование в конец строки  
  map a A

" Показывать положение курсора всё время.
  set ruler

" Показывать незавершённые команды в статусбаре
  set showcmd

" как долго будет ожидать следующую команду.. пока не въехал, хуета какая-от..
  set mat=2

" вырезает одно слово под курсором (можно использовать как удаление)
  map x diw

" скопировать слово
  map c yiw

" Подсветка текущей строки
  set cursorline

" использовать 256 цветов.
  set term=xterm-256color

" номерав строк
  set number

" табуляция
  " в режиме вставки заменяет символ табуляции на соответствующее количество пробелов.
    set expandtab 
  " количество пробелов, которые заменяют табуляцию
    set tabstop=2
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

"---- ПЛАГИНЫ, обязательно почитать про установку vim-plug
  call plug#begin('~/.vim/plugged')
  "калькулятор
  Plug 'sk1418/HowMuch'
  "плагин для открытыя папок (реагирует на CTRL + o)
  Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
  "для цветовой схемы
  Plug 'morhetz/gruvbox'
  "автодополнение для JS и прочего (внимательно гуглить про установку)
  Plug 'Valloric/YouCompleteMe'
  "доставляет скобки.
  Plug 'jiangmiao/auto-pairs'
  "показывает классы функции,в общем еще не заценил, вызывается по Ctrl-b
  "(необходимо установть ctags sudo apt-get install ctags) в общем нах не нужен
  "говноплагин, отстой, нах не работает, но лучше походу не придумали.((
  Plug 'majutsushi/tagbar'
  " плагин для html верстки
  Plug 'mattn/emmet-vim'
  " плагин для питона (полное говно)
  " Plug 'klen/python-mode'
  " Plug 'mitsuhiko/vim-python-combined'
  " будем надеяться что этот плагин более удобный и более корректно работает
  " Plug 'vim-scripts/taglist.vim'
  "для javascript, показывает функции и переменные, пока нареканий нет, работает
  "норм. Хуета подноготная, давно загнулся и нах не работает!
  "Plug 'int3/vim-taglist-plus'
  "попробуем этот плагин для JS, походу гавно плагин, так и не завелся, походу
  " это говнище нужно для запуска плагина анализа тэгов majutsushi/tagbar'
  Plug 'ternjs/tern_for_vim', { 'do': 'npm install'  }
  "для поиска, поиск производится по всему файлу, поиск производится через
  "нажатие клавиш, которые херачатся близка к руке  (нах не уперся)
  "Plug 'morhetz/gruvbox'
  "для коментирования кода, вполне ахуенный плагин (только работает через раз)
  Plug 'scrooloose/nerdcommenter'
  "внешний вид, пока не разобрался
  Plug 'vim-airline/vim-airline'
  "надеюсь, это адекватный плагин для поиска
  Plug 'mileszs/ack.vim'
  "парное программирование, одновременное редактирование кода несколькими пользователями (еще бы работал, вообще было бы здорово)
  Plug 'FredKSchott/CoVim'
  Plug 'google/vim-maktaba'
  Plug 'google/vim-codefmt'
  " Also add Glaive, which is used to configure codefmt's maktaba flags. See
  " " `:help :Glaive` for usage.
  Plug 'google/vim-glaive'"
  call plug#end()

" TagList настройки majutsushi/tagbar
  map <C-b> :TagbarToggle<CR>
  let g:tagbar_sort = 0
  let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" плагин для поиска тегов vim-scripts/taglist.vim
" map <C-b> :TlistToggle<CR>
"
" nerdcommenter
  filetype plugin on
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

" тут типа плагин для JS, пока не въехал, работает ли..
  let g:deoplete#enable_at_startup = 1
  if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
  endif
  " let g:deoplete#disable_auto_complete = 1
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
  " omnifuncs
  augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  augroup end
  "             " tern
  if exists('g:plugs["tern_for_vim"]')
    let g:tern_show_argument_hints = 'on_hold'
    let g:tern_show_signature_in_pum = 1
    autocmd FileType javascript setlocal omnifunc=tern#Complete 
  endif

" цветовая схема
  colorscheme gruvbox
  set background=dark

" показать дерево файлов
  map <C-o> :NERDTreeToggle<CR>

" ---управление окнами
  "разделить окно
  map <C-w>v :sp<CR>
  map <C-w>h :vsp<CR>
  imap <C-w>v :sp<CR>
  imap <C-w>h :vsp<CR>

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

" попробую написать свой собственный плагин
  " плагин для создания файлов по шаблону
  " autocmd BufNewFile *.py source ~/.vim/ftplugin/python.vim
  " autocmd BufNewFile index.html source ~/.vim/ftplugin/html.vim

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
