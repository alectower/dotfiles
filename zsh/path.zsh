typeset -U path
export PYTHONPATH=$(brew --prefix)/lib/python2.7/site-packages
path=(
  bin
  ~/bin
  ~/.cabal/bin
  /usr/local/bin
  /usr/local/sbin
  ~/bin
  /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources
  $HOME/Dropbox/code/bash/bin
  $HOME/Dropbox/code/ruby/bin
  /usr/local/heroku/bin
  $HOME/.carton/bin
  /usr/local/share/npm/bin
  $path
)
