# Setup fzf
# ---------
if [[ ! "$PATH" == */home/islam/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/islam/.fzf/bin"
fi

eval "$(fzf --bash)"
