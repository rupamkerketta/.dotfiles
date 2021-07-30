# Shortcuts to .vimrc and .bashrc
alias vimrc='vim ~/.vimrc'
alias bashal='vim ~/.bash_aliases'
alias bashrc='vim ~/.bashrc'
alias tmuxcf='vim ~/.tmux.conf'

# Folder shortcuts
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'
alias dwld='cd ~/Downloads'
alias docs='cs ~/Documents'

# Create a directory and `cd` into it
mcd(){
    mkdir -p "$1"
    cd "$1"
}

# Git shortcuts
alias gc='git commit -m'
alias gal='git add .'
alias gch='git checkout'
alias gl='git log --graph --oneline --decorate'
alias gs='git status'
