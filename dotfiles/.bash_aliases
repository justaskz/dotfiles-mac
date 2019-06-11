#!/usr/bin/env bash

alias src="source ~/.zshrc"

#################################################
## TMUX
#################################################
alias tmc="tmux new -s"
alias tma="tmux attach -t"
alias tmd="tmux detach"
alias tmk="tmux kill-session -t"
alias tml="tmux list-sessions"
alias tms="tmux source-file ~/.tmux.conf"

#################################################
## GIT
#################################################
alias gis="git status -s"
alias giss="git status"
alias gic="git checkout"
alias gip="git remote prune origin"
alias gil="git log"
alias gill="git log --graph --oneline --all"
alias gilll="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias gir="git reset HEAD^"
alias gib="git branch --sort=-committerdate"
alias gibb="git branch"
alias gifp="git push -f origin HEAD"
alias gisave="git add .; git commit -m wip"
alias giupdate="git add .; git commit --am; git push -f origin HEAD"

#################################################
## TOOLS
#################################################
alias ..="cd .."
alias rr="rmtrash"
alias ls="ls -G"
alias l="ls"
alias a="ls"
alias as="ls -Glah"
alias s="subl"
alias add="subl -a"

alias search="find * | grep -i"
alias searchin="fgrep --exclude-dir=.meteor --exclude-dir=.git -irn"
alias psa="ps xw | grep"
alias untar="tar xvzf"
alias genv="env | grep"

alias kitchen="bundle exec kitchen"

#################################################
## HEROKU
#################################################
alias h="heroku"

#################################################
## RAILS
#################################################
alias rs="script/server"
alias rc="bundle exec rails console"
alias rsidekiq="bundle exec sidekiq -C config/sidekiq.yml"
alias rsidekiq_pool="bundle exec sidekiq-pool config/sidekiq-pool.yml"
alias rmigrate="bundle exec rake db:migrate"
alias rmigrate_rollback="bundle exec rake db:rollback"
# alias rmigrate_test="bundle exec rake db:migrate RAILS_ENV=test"
alias rmigrate_test="mysql md_test < db/structure.sql"
alias rreset="rake db:reset"
alias rtest="bundle exec spring rspec --profile --"
alias qw_feed="rtest spec/integration/feed spec/domain/feed/"
alias qw_catalog="rtest spec/integration/domain/catalog spec/domain/catalog"
alias qw_saved_searches="rtest spec/integration/domain/saved_searches spec/domain/saved_searches"
alias lint="scss-lint | grep order"
alias jtest="RAILS_ENV=test bundle exec rake spec:javascript SPEC=my_test"

alias postgres_start="pg_ctl -D /usr/local/var/postgres start"
alias postgres_stop="pg_ctl -D /usr/local/var/postgres stop"

#################################################
## BOOKMARKS
#################################################
alias bin="cd ~/bin"
alias opt="cd ~/opt"
alias repos="cd ~/repos"
alias notes="cd ~/repos/notes"
alias ele="cd ~/repos/notes/install/install_elementary/src"
alias tools="cd ~/repos/notes/install/install_tools/src"
alias vimr="cd ~/repos/notes/war_of_editors/vim/vimrc/src"
alias dbox="cd ~/Dropbox"
alias gdrive="cd ~/Google\ Drive"
alias books="cd ~/Google\ Drive/books"
alias juliafolder="cd ~/.julia/v0.3"
alias sublime="cd $SUBLIME"
alias gatekeeper_disable="sudo spctl --master-disable"
alias gatekeeper_enable="sudo spctl --master-enable"

#################################################
## VINTED STUFF
#################################################
function sshcore {
  ssh -t jkazakauskas@janitor.vinted.net "sudo -u mongrel bash -c 'ssh -t rr-webapp1.vinted.net \"cd /opt/$1/core/current/; bundle exec rails c production\"'"
}
