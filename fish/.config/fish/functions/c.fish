function c --description 'Jump into a project directory'
    if test -e "$GOPATH/src/github.com/$argv[1]"
        cd "$GOPATH/src/github.com/$argv[1]"
    else
        cd "$PROJECTS/$argv[1]"
    end
end
