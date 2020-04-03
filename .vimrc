set nocompatible
set encoding=utf-8



if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug '907th/vim-auto-save'
Plug 'mileszs/ack.vim'
Plug 'reedes/vim-pencil'
Plug 'alan-saar/vim-pomodoro'
Plug 'itchyny/calendar.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'
Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
call plug#end()




let g:pandoc#spell#enabled = 0
"let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#folding#fdc = 0


let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
 " autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END



let g:ctrlp_map = '<c-p>'
let g:nv_search_paths = ['~/Dropbox/_notas']
let g:nv_use_short_pathnames = 1
let g:loaded_matchparen=1

set nobackup
set nowb
set noswapfile

set autoindent
set number relativenumber
set number
set ruler "1,1 cursor
set hlsearch
set incsearch
set ignorecase
set smartcase
set splitbelow splitright
set wildmenu
set wildmode=list:longest
set scrolloff =5 
set wrap linebreak nolist 

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set mouse=a

set whichwrap+=<,>,h,l,[,]

set noerrorbells
set novisualbell


:imap jj <Esc>

vmap <C-x> : !pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

:nmap <C-i> :! pandoc % --pdf-engine=xelatex -o %:r.pdf<Enter>
:nmap <C-m> :! pandoc % -t beamer -o %:r.pdf<Enter>
:nmap <C-o> :! open %:r.pdf<Enter>
:nmap <C-l> :! pdflatex % %:r.pdf<Enter> 
:nmap <C-b> :! bibtex %:r<Enter>
:nmap NV :NV
:nmap -- :Goyo <CR> 
:nmap ,, G$

:nmap <C-Up> ddkP
:nmap <C-Down> ddp
:nmap <C-Left> zc
:nmap <C-Right> zo

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
