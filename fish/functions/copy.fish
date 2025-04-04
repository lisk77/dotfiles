function copy
    if test (count $argv) -eq 0
        echo "Usage: copy <path>"
        return 1
    end

    bat $argv | wl-copy
end
