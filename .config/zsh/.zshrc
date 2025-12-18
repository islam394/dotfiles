# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
# History (clean, shared, sane)
setopt sharehistory
setopt appendhistory
setopt histignorealldups
setopt hist_ignore_space
# Navigation & UX
setopt interactivecomments
setopt notify
setopt correct
# Globbing power
setopt extendedglob
setopt globdots
# Politeness
unsetopt beep
unsetopt mail_warning
# Keybindings
bindkey -e
# Load The Plugins 
# The following lines were added by compinstall
zstyle :compinstall filename '/home/islam/.config/zsh/.zshrc'
autoload -U compinit 
compinit -d ~/.cache/zsh/.zcompdump
# End of lines added by compinstall
source ~/.config/zsh/tools/sources
# Load completions
zinit cdreplay -q
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1 -A --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'lsd -1 -A --color=always $realpath'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
