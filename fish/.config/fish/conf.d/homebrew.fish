# Put homebrew on PATH. The prefix differs between Apple Silicon and Intel, and
# `brew shellenv` needs the `fish` argument or it emits bash `export` syntax.
#
# This lives in conf.d rather than config.fish so it runs before anything that
# depends on brew-installed tools.
for prefix in /opt/homebrew /usr/local
    if test -x $prefix/bin/brew
        $prefix/bin/brew shellenv fish | source
        break
    end
end
