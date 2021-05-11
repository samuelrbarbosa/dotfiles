set nocompatible
set encoding=utf-8
filetype plugin on
syntax on

set nobackup
set nowb
set noswapfile
set autoindent
set number relativenumber
set ruler "1,1 cursor
set nohlsearch
set incsearch
set ignorecase
set smartcase
set splitbelow splitright
set wildmenu
set wildmode=list:longest
set scrolloff =8 
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
Plug 'tpope/vim-eunuch'
Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'xuhdev/vim-latex-live-preview', {'for': 'tex'}
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'gruvbox-community/gruvbox'
Plug 'https://github.com/alok/notational-fzf-vim'
call plug#end()


let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text,txt call pencil#init()
augroup END

autocmd BufWinLeave *.* mkview 
autocmd BufWinEnter *.* silent loadview  





let g:ctrlp_map = '<c-p>'

let g:markdown_folding = 1

let g:pandoc#spell#enabled = 0

let g:pandoc#folding#fdc = 0


let g:nv_search_paths = ['~/Google\ Drive/Meu\ Drive/_notas/zk/']
let g:nv_default_extension = ''
let g:nv_use_short_pathnames = 1
let g:nv_preview_width = 70
let g:nv_window_width = '35'
let g:nv_wrap_preview_text = 1





let g:loaded_matchparen=1

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
   autocmd FileType tex,tex call pencil#init()

  " autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
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
:nmap <Up> gk
:nmap <Down> gj
nmap <silent> ,n :nohls<CR>
nnoremap ,md :-1read $HOME/.vim/.md.md<cr>
nnoremap ,be :-1read $HOME/.vim/.beamer.md<cr>
nnoremap ,patat :-1read $HOME/.vim/patat.md<cr>
nnoremap ,b :Buffers<cr>
nnoremap ,, :b#<cr>
nnoremap ,d :bd<cr>
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
noremap <leader>q :q<cr>
nnoremap <leader>w <C-w>w
inoremap << <!--
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

inoremap [a ā
inoremap [e ē
inoremap [i ī
inoremap [o ō
inoremap [u ū

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

let g:netrw_banner = 0
let g:netrw_winsize = 75

set rtp+=/usr/local/opt/fzf

let g:zettelkasten = '~/Google\ Drive/Meu\ Drive/_notas/'

command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "-<args>.md"
nnoremap <leader>nz :NewZettel 
imap <c-x><c-f> <plug>(fzf-complete-path)

command! -nargs=1 Zettel :execute ":e" . strftime("%y%m%d%H%M") . "-<args>.md"
nnoremap <leader>nn :Zettel 



let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_OPTS="--ansi --preview-window='right:70%:wrap' --margin=1,4"

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--info=inline', '--preview', 'cat {}']}, <bang>0)

  



nnoremap ,f :Files<cr>
nnoremap ,ff :RG<cr>


command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('right:70%:wrap'), <bang>0)


function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


" set ve=all

