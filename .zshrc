# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
    git
    brew
    common-aliases
    jsontools
    transfer
)

source $ZSH/oh-my-zsh.sh

# User configuration

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"

# Must-use plugins (a.k.a. mu-history)
alias mu-history="history | tr -s ' ' | cut -d ' ' -f3 | sort | uniq -c | sort -nr | head"

# Show/hide hidden files in the Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com -4"
alias localip="ipconfig getifaddr en0"

# youtube-dl
alias ytv="youtube-dl -f bestvideo+bestaudio"
alias yta="youtube-dl -x --audio-format best"
alias yta-aac="youtube-dl -x --audio-format aac"
alias yta-flac="youtube-dl -x --audio-quality 0 --audio-format flac"
alias yta-m4a="youtube-dl -x --audio-format m4a"
alias yta-mp3="youtube-dl -x --audio-format mp3"
alias yta-opus="youtube-dl -x --audio-format opus"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

# Pure theme
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure
