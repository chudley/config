#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\[\033[0;33m\]\u\[\033[m\]@\[\033[0;33m\]\h\[\033[m\]]: \w\n\[\033[1;33m\]$\[\e[m\] "

# Journal
journal_dir=~/Dropbox/Journal
journal_file=$journal_dir/journal-$(date -I).txt

if [ ! -d "$journal_dir" ]; then `mkdir $journal_dir`; fi

function j {
	# Help
	if [ "$1" == "-h" ]; then
		echo Usage: '$ j -m "message"'
		echo Escape variables with single quotes.
		return
	fi
	if [ "$1" == "-m" ]; then
		echo [$(date +"%Y-%m-%d %T %z")] >> $journal_file
		echo "$2" >> $journal_file
		echo '' >> $journal_file
	fi
	if [ "$1" == "-c" ]; then
		entry_count=`grep "\[$(date -I)" $journal_file | wc -l | grep -Eo ^[0-9]+`
		echo "($entry_count) entries today"
	fi
}
