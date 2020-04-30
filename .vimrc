set nocompatible
set encoding=utf-8
filetype plugin on



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
Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'vimwiki/vimwiki'
call plug#end()


let g:livepreview_previewer = 'open -a Skim'

let g:pandoc#spell#enabled = 0
"let g:pandoc#modules#disabled = ["folding"]
let g:pandoc#folding#fdc = 0


let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
 " autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

autocmd BufWinLeave *.* mkview 
autocmd BufWinEnter *.* silent loadview  


let g:ctrlp_map = '<c-p>'
let g:nv_search_paths = ['~/Google\ Drive\ File \Stream/Meu\ Drive/_notas']
let g:nv_use_short_pathnames = 1
let g:loaded_matchparen=1

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
   autocmd FileType tex,tex call pencil#init()

  " autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END



set nobackup
set nowb
set noswapfile

set autoindent
"set number relativenumber
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
:nmap <C-l> : !pdflatex % %:r.pdf<Enter> 
:nmap <C-b> :! bibtex %:r<Enter>
:nmap NV :NV
:nmap -- :Goyo <CR> 
:nmap ,, G$
:nmap <C-Up> ddkP
:nmap <C-Down> ddp
:nmap <C-Left> zc
:nmap <C-Right> zo

nnoremap ,md :-1read $HOME/.vim/.md.md<cr>

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

let g:netrw_banner = 0
let g:netrw_winsize = 75

set rtp+=/usr/local/opt/fzf
