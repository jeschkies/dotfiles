function extract --description 'Extract archived files / mount disk images'
    set -l file $argv[1]

    if test -f "$file"
        switch $file
            case '*.tar.bz2'
                tar -jxvf $file
            case '*.tar.gz'
                tar -zxvf $file
            case '*.bz2'
                bunzip2 $file
            case '*.dmg'
                hdiutil mount $file
            case '*.gz'
                gunzip $file
            case '*.tar'
                tar -xvf $file
            case '*.tbz2'
                tar -jxvf $file
            case '*.tgz'
                tar -zxvf $file
            case '*.zip' '*.ZIP'
                unzip $file
            case '*.pax'
                cat $file | pax -r
            case '*.pax.Z'
                uncompress $file --stdout | pax -r
            case '*.rar'
                unrar x $file
            case '*.Z'
                uncompress $file
            case '*'
                echo "'$file' cannot be extracted/mounted via extract()"
        end
    else
        echo "'$file' is not a valid file"
    end
end
