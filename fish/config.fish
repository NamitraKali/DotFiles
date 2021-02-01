# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/namitrak/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


#### Starship Initialize ####
starship init fish | source

alias ls="exa -l"
alias cat="bat"
alias grep="rg"
alias find="fd"
