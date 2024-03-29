# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/samuelrbarbosa/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

#ZSH_THEME="gruvbox"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(git zsh-autosuggestions)

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
#/source: 'source ~/.bash_profile'

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh
# alias t="~/Dropbox/todo/todo.sh"
alias td="~/Google\ Drive/Meu\ Drive/todo/todo.sh"
alias notas="cd ~/Google\ Drive/Meu\ Drive/_notas"
alias zk="cd ~/Google\ Drive/Meu\ Drive/_notas/zk/"
alias ldnotas="cd ~/Google\ Drive/Meu\ Drive/_notas/ld_notas"
alias ied="vim ~/Google\ Drive/Meu\ Drive/_notas/ied.md"
alias tv2="tv2 ~/Google\ Drive/Meu\ Drive/_notas"

n() { vim ~/Google\ Drive/Meu\ Drive/_notas/zk/"$*".md } 

alias fd="cd ~/Google\ Drive/Meu\ Drive/_fd"
alias ied="cd ~/Google\ Drive/Meu\ Drive/_fd/ied2021i/"
alias pdf="cd ~/Google\ Drive/Meu\ Drive/_pdf"
alias dropbox="cd ~/Dropbox"
alias proj="cd ~/Google\ Drive/Meu\ Drive/_projetos"
alias indios="cd /Users/samuelrbarbosa/Google\ Drive/Meu\ Drive/_projetos/indios_carmen"
alias terras="cd /Users/samuelrbarbosa/Google\ Drive/Meu\ Drive/_projetos/legislacao_terras"
alias lexico="cd /Users/samuelrbarbosa/Google\ Drive/Meu\ Drive/_projetos/lexico_colonial"
alias mecila="cd ~/Google\ Drive/Meu\ Drive/_projetos/mecila"
alias habil="cd ~/Google\ Drive/Meu\ Drive/_projetos/habilitation"
alias latex="cd ~/Google\ Drive/Meu\ Drive/_latex"
alias mpi="cd ~/Google\ Drive/Meu\ Drive/_notas/mpi19"
alias sf=surfraw
alias bujo="vim ~/Google\ Drive/Meu\ Drive/_notas/bujo20.md"
alias accomodados="vim ~/Google\ Drive/Meu\ Drive/_projetos/habilitation/projeto_accomodados.md"
alias template='cd ~/Google\ Drive/Meu\ Drive/_latex; vim template'
alias note='cd ~/Google\ Drive/Meu\ Drive/_notas; vim'
alias gdrive= "cd ~/Google\ Drive\ File/"
alias cv="vim ~/Google\ Drive/Meu\ Drive/_fd/cv.md"
alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc"
alias dt="date +%y%m%d%H%M"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"
alias config='/usr/bin/git --git-dir=/Users/samuelrbarbosa/dotfiles/ --work-tree=/Users/samuelrbarbosa'
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

export NOTES_DIR=$HOME/zk

export PATH="HOME/.cabal/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

export FZF_CTRL_T_OPTS="--preview 'cat {}' --preview-window='right:70%:wrap'"



#bindkey -v

