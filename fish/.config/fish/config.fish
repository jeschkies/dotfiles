set -gx PROJECTS ~/src

if status is-interactive
    fish_vi_key_bindings
end

if test -f ~/.localrc.fish
    source ~/.localrc.fish
end
