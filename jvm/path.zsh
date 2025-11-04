# lazy load sdkman
lazy-sdkman()
{
  unset -f sdk java mvn
  export SDKMAN_DIR="$HOME/.sdkman"
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
}

sdk()
{
  lazy-sdkman
  sdk $@
}

java()
{
  lazy-sdkman
  java $@
}

mvn()
{
  lazy-sdkman
  java $@
}
