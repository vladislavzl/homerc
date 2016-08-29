"перемещение при помощи ctrl и стрелки
map <C-Left> b
map <C-Right> w

"использовать 256 цветов.
set term=xterm-256color

"цветовая схема по умолчаниюю
"colorscheme default

"номерав строк
set number
"чето с табуляцией, может и нах не нужно
set expandtab
"нерегистрозависимый поиск
set hlsearch
"поиск по всему файлу
set incsearch
"подсветка синтаксиса
syntax on

"---- ПЛАГИНЫ
call plug#begin('~/.vim/plugged')
"плагин для открытыя папок (реагирует на CTRL + o)
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
"для цветовой схемы
Plug 'morhetz/gruvbox'
"автодополнение для JS и прочего (внимательно гуглить про установку)
Plug 'Valloric/YouCompleteMe'
"доставляет скобки.
"доставляет скобки.
Plug 'majutsushi/tagbar'
"для поиска, поиск производится по всему файлу, поиск производится через
"нажатие клавиш, которые херачатся близка к руке  (нах не уперся)
"Plug 'morhetz/gruvbox'
call plug#end()

"плагин поиска (так-то нахуй не нужен)
"map <Leader> <Plug>(easymotion-prefix)
"let g:mapleader=','

"цветовая схема
colorscheme gruvbox
set background=dark

"map
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


