# git
alias g="git"
alias gd="git diff"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git pull"

# Custom prompt
set fish_greeting
set fish_prompt

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
    echo (set_color 87d7af)(date +%H:%M:%S) (set_color 87d7ff)(prompt_pwd) (set_color ffafff)(fish_git_prompt) (set_color ffafff)'→ '
end

# Convert ssh-agent output to fish shell (not done by default when you start fish)
eval (ssh-agent -c)
