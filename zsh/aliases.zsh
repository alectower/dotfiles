alias alfadocs='cd ~/Dropbox/docs/work/alfa_jango_docs'
alias artists='(music && ls | less)'
alias box='cd ~/Dropbox'
alias c='clandestine'
alias code='cd ~/Dropbox/code'
alias ctags="`brew --prefix`/bin/ctags"
alias e='echo See you later!; sleep 1; killall iTerm'
alias githist='git log --reverse --pretty=format:"%s%n%b"'
alias gitpt='git push test test:master &>tmp/deploy_test.log &'
alias gitptf='git push -f test test:master &>tmp/deploy_test.log &'
alias gitps='git push staging staging:master &>tmp/deploy_staging.log &'
alias gitpsf='git push -f staging staging:master &>tmp/deploy_staging.log &'
alias gitpp='git push prod master &>tmp/deploy_prod.log &'
alias migrate="bundle exec rake db:migrate db:rollback && bundle exec rake db:migrate"
alias music='cd ~/Music/iTunes/iTunes\ Media/Music'
alias oneping='ping -c 1'
alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgst='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias record='rec -r 44100 -c 2'
alias t='cd ~/.Trash'
alias torpid="lsof -i :9050 | grep tor | tr -s ' '' ' | cut -d ' ' -f2 | uniq"
alias killtor="torpid | xargs kill -9"
alias mario-kart="(cd ~/games/mupen64plus-bundle-osx-2.0 && ./run_glide.sh ~/games/n64/Mario\ Kart\ 64.v64)"
alias heroku-migrate="heroku run bundle exec rake db:migrate"
alias sshtron="ssh sshtron.zachlatta.com"
alias gitfn="grep diff | cut -d ' ' -f4"

setopt completealiases
eval "$(hub alias -s)"
