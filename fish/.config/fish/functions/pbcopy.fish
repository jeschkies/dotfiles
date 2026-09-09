function pbcopy --description 'macOS-style pbcopy on Linux using xclip'
    if test (uname) = Linux
        xclip -selection clipboard $argv
    end
end
