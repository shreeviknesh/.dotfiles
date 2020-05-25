alias cl=clear
alias cls="clear && ls -a"

# Custom git aliases
alias g="git"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gf="git fetch"
alias gi="git init"
alias gpul="git pull"
alias gpus="git push"

# alias gcl="git clone"
# git clone function
# - the whole path is the repo name if it starts with https
# - if it doesn't, it's one of my own repositories
gcl() {
    if [[ $* = https* ]]; then
        eval "git clone $*"
    else
        eval "git clone https://github.com/shreeviknesh/$*"
    fi
}

# git add function
ga() {
    if (( $# > 0)); then
        eval "git add $*"
    else
        eval "git add ."
    fi
}



# Custom rust aliases
alias cr="cargo run"
alias crr="cargo run --release"
alias cb="cargo build"
alias cbr="cargo build --release"
alias cc="cargo check"

# Custom python aliases
alias python=python3.8
alias pip=pip3

