# GOROOT is intentionally unset: the go binary derives it from its own path.
set -gx GOPATH $HOME/go
fish_add_path $GOPATH/bin
