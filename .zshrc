# XDG Variables

export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_RUNTIME_DIR="/run/user/$UID"

# More enviroment variables

export ASDF_DATA_DIR="$XDG_DATA_HOME"/asdf
export HISTFILE="${XDG_STATE_HOME}"/zsh/history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="passion"

zstyle ':omz:update' mode auto      # update automatically without asking

plugins=(
	git
	zsh-syntax-highlighting
	poetry
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
else
export EDITOR='nvim'
fi

# Set the default editor
export EDITOR=nvim
export VISUAL=nvim
alias vim='nvim'
# Edit ZSHRC file
alias ezrc='vim ~/.zshrc'
# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
# Alias's for multiple directory listing commands
alias la='ls -Alh' # show hidden files
alias ls='ls -Fh --color=always' # add colors and file type extensions
alias lx='ls -lXBh' # sort by extension
alias lk='ls -lSrh' # sort by size
alias lc='ls -lcrh' # sort by change time
alias lu='ls -lurh' # sort by access time
alias lr='ls -lRh' # recursive ls
alias lt='ls -ltrh' # sort by date
alias lm='ls -alh |more' # pipe through 'more'
alias lw='ls -xAh' # wide listing format
alias ll='ls -Fls' # long listing format
alias labc='ls -lap' #alphabetical sort
alias lf="ls -l | egrep -v '^d'" # files only
alias ldir="ls -l | egrep '^d'" # directories only

alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

alias info=fastfetch
alias gcc=gcc-13
alias envme='eval $(poetry env activate)'

export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
source $ZSH/oh-my-zsh.sh


