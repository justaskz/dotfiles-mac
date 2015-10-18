#!/usr/bin/env zsh

function mk {
  mkdir -p $@ && cd $@
}

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

#################################################
## RAILS
#################################################
alias rs="rails server"
alias rc="rails console"
alias rmigrate="rake db:migrate"
alias rreset="rake db:reset"
alias rtest="spring rspec"
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

# for data projects
export raw="data/raw"
export vw="data/vw"
export temp="data/temp"
export out="data/out"
