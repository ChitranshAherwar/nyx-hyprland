if status is-interactive
# Commands to run in interactive sessions can go here
alias cat="bat"
alias wall="~/.config/hypr/scripts/setwall"
starship init fish | source
end
alias popww="~/Games/scripts/popww.sh"
zoxide init fish | source
alias ls='eza --icons=auto'
alias la='eza --icons=auto -a'
alias ll='eza --icons=auto -lah --git --group-directories-first'
alias lt='eza --icons=auto --tree --level=2'
