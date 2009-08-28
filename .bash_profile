if [ -f ~/.rvm/bin/rvm ] ; then source ~/.rvm/bin/rvm ; fi

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

PS1='\[\033[01;32m\][ \[\033[01;30m\]\w$(parse_git_branch) \[\033[01;32m\]]\[\033[01;34m\] :: \[\033[00m\]'


# -- start rip config -- #
RIPDIR=/Users/drchiu/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #
