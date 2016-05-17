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
alias gil="git log"
alias gill="git log --graph --oneline --all"
alias gilll="git log --graph --pretty=format:'%C(yellow)%h%Creset%C(blue)%d%Creset %C(white bold)%s%Creset %C(white dim)(by %an %ar)%Creset' --all"
alias gir="git reset HEAD^"
alias gib="git branch"
alias gifp="git push -f origin HEAD"
alias gisave="git add .; git commit -m foo"

#################################################
## TOOLS
#################################################
alias ..="cd .."
alias rr="rm -rf"
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
## RAILS
#################################################
alias rs="script/server"
alias rc="rails console"
alias rmigrate="rake db:migrate"
alias rreset="rake db:reset"
alias rtest="bundle exec spring rspec"
alias rtestag="spring rspec --tag selected -f d"
alias lint="scss-lint | grep order"
alias jtest="RAILS_ENV=test bundle exec rake spec:javascript SPEC=my_test"

#################################################
## BOOKMARKS
#################################################
alias h="cd ~"
alias bin="cd ~/bin"
alias repos="cd ~/repos"
alias notes="cd ~/repos/notes"
alias ele="cd ~/repos/notes/install/install_elementary/src"
alias tools="cd ~/repos/notes/install/install_tools/src"
alias vimr="cd ~/repos/notes/war_of_editors/vim/vimrc/src"
alias dbox="cd ~/Dropbox"
alias books="cd ~/Dropbox/books"
alias juliafolder="cd ~/.julia/v0.3"
alias sublime="cd $SUBLIME"

#################################################
## VINTED STUFF
#################################################
alias us_reset='COUNTRY=us bundle exec rake db:drop db:create db:structure:load db:seed'
alias us_console='COUNTRY=us script/console'
alias us_server='COUNTRY=us script/server'
alias us_migrate='COUNTRY=us bundle exec rake db:migrate'
alias us_images='COUNTRY=us script/rails s thin --port=3014'

alias de_reset='COUNTRY=de bundle exec rake db:drop db:create db:structure:load db:seed'
alias de_console='COUNTRY=de script/console'
alias de_server='COUNTRY=de script/server'
alias de_migrate='COUNTRY=de bundle exec rake db:migrate'
alias de_images='COUNTRY=de script/rails s thin --port=3014'
