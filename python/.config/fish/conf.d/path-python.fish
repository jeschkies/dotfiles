if test -d $HOME/.pyenv
    set -gx PYENV_ROOT $HOME/.pyenv
    fish_add_path $PYENV_ROOT/bin

    status is-interactive; and pyenv init - fish | source
    status is-interactive; and pyenv virtualenv-init - fish | source
end
