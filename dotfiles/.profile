#!bin/sh

# Models
alias llama="~/projects/llama.cpp/llama-cli -m 'projects/llama.cpp/models/Llama-3.2-1B-Instruct-Q8_0.gguf' -p 'You are helpful assistant in an Alpine Linux BusyBox Ash shell (not Bash!).' --conversation"
alias chat="bash ~/hey/chat"

# App aliases
alias vi=nvim
alias brave="flatpak run com.brave.Browser"
alias browser=brave

# Git aliases
alias gitadd="git add .; git status"

# Sway runtime
if [ -z "$XDG_RUNTIME_DIR" ]; then
    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
    mkdir -m 0700 "$XDG_RUNTIME_DIR"
    export XDG_RUNTIME_DIR
fi

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export LIBSEAT_BACKEND=seatd
export $(dbus-launch)
