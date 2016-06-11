p() {
  dir="/Users/hippie/Music/iTunes/iTunes Media/Music"
  find -L $dir -type f -iregex ".*$1.*" | while read -r file; do
    FIELDS=(${(s:/:)file#$dir/})
    echo
    echo 'Playing...'
    echo
    echo "    Artist: $FIELDS[1]"
    echo "    Album:  $FIELDS[2]"
    echo "    Song:   $FIELDS[3]"
    afplay $file
  done
}

function rails-workspace() {
  echo "creating workspace for " $1
  dir="/Users/hippie/Dropbox/code/ruby/rails/$1"
  pow_dir="/Users/hippie/.pow"
  name=$(echo "$1" | cut -d "/" -f2)

  if [ ! -d "$pow_dir/$name" ]; then
    cd $pow_dir
    ln -s $dir $name

    cd $dir
    if [ ! -f ".powenv" ]; then
      ln -s "/Users/hippie/.powenv" .
    fi
  else
    cd $dir
  fi

  tmux -2 new-session -s $1 -n vim -d
  tmux send-keys -t $1:0 'vim' C-m

  tmux new-window -n console
  tmux send-keys -t $1:1 'bundle exec rails c' C-m

  tmux new-window -n log
  tmux send-keys -t $1:2 'tail -f log/development.log' C-m

  tmux new-window -n pry

  tmux attach -t $1:0
}
