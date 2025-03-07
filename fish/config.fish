if status is-interactive
    source (/home/lisk77/.cargo/bin/starship init fish --print-full-init | psub)
    set -x WAYLAND_DISPLAY wayland-1
  #source ~/esp/esp-idf/export.fish >/dev/null 2>&1
    clear
end

fish_add_path /home/lisk77/.spicetify
