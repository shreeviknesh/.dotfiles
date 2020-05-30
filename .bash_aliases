# A function to first print out the action it's going to perfon
# And then performs the action
echo_and_eval() {
    echo "$ $*"
    eval "$*"
}

alias cl="clear"
alias cls="clear && ls -a"

# Custom git aliases
alias g="echo_and_eval git"
alias gs="echo_and_eval git status"
alias gcm="echo_and_eval git commit -m"
alias gcam="echo_and_eval git commit -am"
alias gf="echo_and_eval git fetch"
alias gi="echo_and_eval git init"
alias gpul="echo_and_eval git pull"
alias gpus="echo_and_eval git push"

# Add all, commit with the message and push
gacp() {
    if (( $# == 1 )); then
        echo_and_eval "git add ."
        echo_and_eval "gcm \"$*\""
        echo_and_eval "git push"
    else
        echo "Invalid number of arguments. Requires a commit message."
    fi
}

# git clone function
# - the whole path is the repo name if it starts with https
# - it's of type the "username/repo_name"
# - it neither, it's one of my own repositories
gcl() {
    if [[ $* = https* ]]; then
        echo_and_eval "git clone $*"
    elif [[ $* = */* ]]; then
        echo_and_eval "git clone https://github.com/$*"
    else
        echo_and_eval "git clone https://github.com/shreeviknesh/$*"
    fi
}

# git add function
ga() {
    if (( $# > 0)); then
        echo_and_eval "git add $*"
    else
        echo_and_eval "git add ."
    fi
}

# Custom rust aliases
alias cr="echo_and_eval cargo run"
alias crr="echo_and_eval cargo run --release"
alias cb="echo_and_eval cargo build"
alias cbr="echo_and_eval cargo build --release"
alias cc="echo_and_eval cargo check"

# Custom python aliases
alias python="echo_and_eval python3.8"
alias pip="echo_and_eval pip3"
