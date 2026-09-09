function __c_complete_dirs --description 'Directory candidates for the c function completion'
    for base in $PROJECTS $GOPATH/src/github.com
        test -d "$base"; and find "$base" -mindepth 1 -maxdepth 1 -type d 2>/dev/null | xargs -n1 basename
    end
end
