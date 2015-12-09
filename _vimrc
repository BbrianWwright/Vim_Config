"Brian Wright .vimrc

" referencing a lot from http://nvie.com/posts/how-i-boosted-my-vim/
set hidden	  " hide buffers instead of closing them
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set expandtab     " insert spaces whenever tab is pressed.
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=9999         " remember more commands and search history
set undolevels=9999      " use many muchos levels of undo, just in case...
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep pls
set noerrorbells         " really no beeps
set cursorline           " highlight current line"
set noerrorbells visualbell t_vb=     " no beeps or flashes ever ever ever god why
autocmd GUIEnter * set visualbell t_vb=s

au FocusGained * :redraw!    " force redraw on focus

syntax enable
set background=dark
" Trying out colorschemes, I like low contrast, and I change colors a lot.
" Here are some of my favorites
"colorscheme apprentice
"colorscheme gruvbox
colorscheme base16-ocean
"colorscheme base16-paraiso

" For nerd commenter
filetype plugin on

" add some space for bottom scrolling
" http://blog.sanctum.geek.nz/vim-annoyances/
set scrolloff=10
set linebreak

set nobackup

"if has('gui_win32')
    "set backupdir=E:\\VimTemp     " WINDOWS
"else
    "set backupdir=~/.vim/backup  " UNIX
"endif

set noswapfile
set shortmess+=I
" no more shift
nnoremap ; :


" easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Syntastic setup
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_glsl_checkers = ['cgc']
let g:syntastic_html_checkers=['tidy']
let g:syntastic_css_checkers=['csslint']
let g:syntastic_javascript_checkers=['eslint']

" remap esc
imap jk <Esc>
imap kj <Esc>

let mapleader = "\<Space>"
" I remap CAPS LOCK to Ctrl on an OS level
filetype plugin indent on
set encoding=utf-8
set spell spelllang=en_us
" space + s to toggle spell check
nnoremap <leader>s :set spell!
set spell!     " off on start

" pathogen setup
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath' CRAZY


" ctrlp setup
"http://kien.github.io/ctrlp.vim/
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
autocmd FocusLost   * :set number
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" http://www.bestofvim.com/tip/trailing-whitespace/
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
" automatically remove trailing white spaces on python files
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
" setting up auto-completion with C family
" let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


" http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" turn on matchit
set nocompatible
runtime macros/matchit.vim

" vim airline stuff
" let g:airline_powerline_fonts = 1
"

" windows specific
if has('gui_win32')
    set guioptions-=T  "remove toolbar
    set guifont=Liberation_Mono:h10:cANSI
endif

