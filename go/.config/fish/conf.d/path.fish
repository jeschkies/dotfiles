set -gx GOROOT /usr/local/go
fish_add_path $GOROOT/bin

set -gx GOPATH $HOME/go
fish_add_path $GOPATH/bin
