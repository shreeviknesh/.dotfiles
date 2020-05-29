alias cl="clear"
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
#LEGENDARY
# Add all, commit with the message and push
gacp() {
    if (( $# == 1 )); then
        echo "$ git add ."
        eval "git add ."
        echo "$ gcm \"$*\""
        eval "gcm \"$*\""
        echo "$ git push"
        eval "git push"
    else
        echo "Invalid number of arguments. Requires a commit message."
    fi
}

# git clone function
# - the whole path is the repo name if it starts with https
# - if it doesn't, it's one of my own repositories
gcl() {
    if [[ $* = https* ]]; then
        echo "$ git clone $*"
        eval "git clone $*"
    elif [[ $* = */* ]]; then
        echo "$ git clone https://github.com/$*"
        eval "git clone https://github.com/$*"
    else
        echo "$ git clone https://github.com/shreeviknesh/$*"
        eval "git clone https://github.com/shreeviknesh/$*"
    fi
}

# git add function
ga() {
    if (( $# > 0)); then
        echo "$ git add $*"
        eval "git add $*"
    else
        echo "$ git add ."
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
alias python="python3.8"
alias pip="pip3"
