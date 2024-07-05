if status is-interactive
    # Commands to run in interactive sessions can go here
end

### alias ###
alias vim nvim
alias vi /usr/bin/vim
alias hx helix
alias sourcefish "source ~/.config/fish/config.fish"

# eza
alias ls 'eza -al --color=always --group-directories-first --icons' # preferred listing
alias la 'eza -a --color=always --group-directories-first --icons' # all files and dirs
alias ll 'eza -l --color=always --group-directories-first --icons' # long format
alias lt 'eza -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# cat
alias cat 'bat --style header --style snip --style changes --style header'

# git
alias gcl 'git clone --depth 1'
alias gi 'git init'
alias ga 'git add'
alias gc 'git commit -m'
alias gp 'git push origin master'

set -U fish_greeting

starship init fish | source
enable_transience
