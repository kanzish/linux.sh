alias chat="~/projects/llama.cpp/llama-cli -m 'projects/llama.cpp/models/Llama-3.2-1B-Instruct-Q8_0.gguf' -p 'You are helpful assistant in an Alpine Linux BusyBox Ash shell (not Bash!).' --conversation"

# Sway runtime
if [ -z "$XDG_RUNTIME_DIR" ]; then
    XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
    mkdir -m 0700 "$XDG_RUNTIME_DIR"
    export XDG_RUNTIME_DIR
fi

export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export LIBSEAT_BACKEND=seatd

# Sway fonts
apk add font-dejavu
