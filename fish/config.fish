if status is-interactive
# Commands to run in interactive sessions can go here
alias ls="eza --icons"
alias ll="eza -la --icons"
alias lt="eza --tree --level=2 --icons"
alias cat="bat"
alias wall="~/.config/hypr/scripts/setwall"
starship init fish | source
end
