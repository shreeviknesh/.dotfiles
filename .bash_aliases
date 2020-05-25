alias cl=clear
alias cls="clear && ls -a"

# Custom git aliases
alias g="git"
alias gs="git status"
alias gcm="git commit -m"
alias gcam="git commit --amend -m"
alias gf="git fetch"
alias gi="git init"
alias gpul="git pull"
alias gpus="git push"
alias gcl="git clone"
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

