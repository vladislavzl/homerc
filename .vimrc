"перемещение при помощи ctrl и стрелки
map <C-Left> b
map <C-Right> w

"Ctrl/Shift + стрелка вниз/вверх
imap <C-Up> 5k
imap <C-Down> 5j
imap <S-Up> 5k
imap <S-Down> 5j
map <C-Up> 5k
map <C-Down> 5j
map <S-Up> 5k
map <S-Down> 5j

"перемещение на начало строки (есть у меня одна бага на плашете)
map <Home> 0

" чтобы автоматом вставляло как надо
" unmap p
map p P

"вырезает одно слово под курсором (можно использовать как удаление)
map x dw

"скопировать слово
map c yw

"использовать 256 цветов.
set term=xterm-256color

"цветовая схема по умолчаниюю
"colorscheme default

"номерав строк
set number
"чето с табуляцией, может и нах не нужно
set expandtab "в режиме вставки заменяет символ табуляции на соответствующее количество пробелов.
set tabstop=2
"табуляция через >> <<
set shiftwidth=2
"табуляция через tab
set smarttab
" Включить игнорирование регистра при поиске
set ignorecase 
set hlsearch
"поиск по всему файлу
set incsearch
"подсветка синтаксиса
syntax on

"НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ ТЕКСТА (фолдинг), работает но смотрится уебищно
"и перемещаться не удобно
" set foldenable " включить фолдинг
" set foldmethod=syntax " определять блоки на основе синтаксиса файла
" set foldmethod=indent " определять блоки на основе отступов
" set foldcolumn=3 " показать полосу для управления сворачиванием
" set foldlevel=1 " Первый уровень вложенности открыт, остальные закрыты
" set foldopen=all " автоматическое открытие сверток при заходе в них
" set tags=tags\ $VIMRUNTIME/systags " искать теги в текущй директории и в указанной (теги генерируются ctags)


" Сохранить файл по <F2>, работает в termux.
"unmap <F2>
nmap <F2>  :w!<CR>
imap <F2>  <Esc>:w!<CR>
vmap <F2>  <Esc>:w!<CR>

" TagList настройки
map <C-b> :TagbarToggle<CR>
let g:tagbar_sort = 0
" let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

"---- ПЛАГИНЫ, обязательно почитать про установку vim-plug
call plug#begin('~/.vim/plugged')
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
"для javascript, показывает функции и переменные, пока нареканий нет, работает
"норм. Хуета подноготная, давно загнулся и нах не работает!
"Plug 'int3/vim-taglist-plus'
"попробуем этот плагин для JS, походу гавно плагин, так и не завелся, походу
" это говнище нужно для запуска плагина анализа тэгов majutsushi/tagbar'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install'  }
"для поиска, поиск производится по всему файлу, поиск производится через
"нажатие клавиш, которые херачатся близка к руке  (нах не уперся)
"Plug 'morhetz/gruvbox'
"для коментирования кода, вполне ахуенный плагин
Plug 'scrooloose/nerdcommenter'
"внешний вид, пока не разобрался
Plug 'vim-airline/vim-airline'
"надеюсь, это адекватный плагин для поиска
Plug 'mileszs/ack.vim'
call plug#end()

"nerdcommenter
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

"тут типа плагин для JS, пока не въехал, работает ли..
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


"плагин поиска (так-то нахуй не нужен)
"map <Leader> <Plug>(easymotion-prefix)
"let g:mapleader=','

"цветовая схема
colorscheme gruvbox
set background=dark

"показать дерево файлов
map <C-o> :NERDTreeToggle<CR>

"---управление окнами
"разделить окно
map <C-w>v :sp<CR>
map <C-w>h :vsp<CR>
imap <C-w>v :sp<CR>
imap <C-w>h :vsp<CR>

""---управление панелями
"создать новую панель
nnoremap <C-w>t :tabnew<CR>
inoremap <C-w>t <Esc>:tabnew<CR>
"переместиться в следущую панель
nnoremap <C-w><PageUp> :tabnext<CR>
"переместиться в предыдущую панель
nnoremap <C-w><PageDown> :tabprev<CR>

"Подсветка текущей строки
set cursorline

"выход двойное нажатие qq
map qq :q<CR>
