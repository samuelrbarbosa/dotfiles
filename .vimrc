set nocompatible
set encoding=utf-8
filetype plugin on

let mapleader=","

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



let g:nv_search_paths = ['~/Google\ Drive/Meu\ Drive/_notas']
let g:nv_default_extension = '.md'
let g:nv_use_short_pathnames = 1
let g:nv_preview_width = 75
let g:nv_wrap_preview_text = 1




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
set number relativenumber
"set number
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

set belloff=all
set noerrorbells
set novisualbell
set hidden

map <F6> :setlocal spell! spelllang=pt<CR>
map <F5> :set spelllang=en_us<CR>

:imap jj <Esc>

vmap <C-x> : !pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
:nmap <C-i> :! pandoc % --pdf-engine=xelatex -o %:r.pdf<Enter>
:nmap <C-m> :! pandoc % -t beamer -o %:r.pdf<Enter>
:nmap <C-o> :! open %:r.pdf<Enter>
:nmap <C-l> : !pdflatex % %:r.pdf<Enter> 
:nmap <C-b> :! bibtex %:r<Enter>
:nmap NV :NV <CR>
:nmap -- :Goyo <CR> 
:nmap ,, G$
:nmap <C-Up> ddkP
:nmap <C-Down> ddp
:nmap <C-Left> zc
:nmap <C-Right> zo

nmap <silent> ,n :nohls<CR>
nnoremap ,md :-1read $HOME/.vim/.md.md<cr>
nnoremap ,be :-1read $HOME/.vim/.beamer.md<cr>
nnoremap ,patat :-1read $HOME/.vim/patat.md<cr>

nnoremap ,b :Buffers<cr>
nnoremap ,, :b#<cr>
nnoremap ,z :e ~/.zshrc<cr>
nnoremap ,v :e ~/.vimrc<cr>
nnoremap ,d :bd<cr>
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
noremap <leader>q :q<cr>

inoremap << <!---->

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

let g:vimwiki_list = [{'path': '~/Google\ Drive/Meu\ Drive/_notas/',
                      \ 'ext': '.md'}]

let g:netrw_banner = 0
let g:netrw_winsize = 75

set rtp+=/usr/local/opt/fzf

let g:zettelkasten = '~/Google\ Drive/Meu\ Drive/_notas/'

command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "-<args>.md"
nnoremap <leader>nz :NewZettel 
imap <c-x><c-f> <plug>(fzf-complete-path)


command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


nnoremap ,f :Files<cr>
nnoremap ,ff :RG<cr>

command! -nargs=1 Zettel :execute ":e" . strftime("%y%m%d%H%M") . "-<args>.md"
nnoremap <leader>nn :Zettel 


function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)



