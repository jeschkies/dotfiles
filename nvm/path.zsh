# lazy load nvm 
lazy-nvm()
{
  unset -f nvm node npm npx
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

nvm()
{
  lazy-nvm
  nvm $@
}

node()
{
  lazy-nvm
  node $@
}

npm()
{
  lazy-nvm
  npm $@
}

npx()
{
  lazy-nvm
  npx $@
}
