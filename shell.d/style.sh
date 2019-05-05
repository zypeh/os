export CLICOLOR=1

PRINT='echo -en'
[ `$PRINT | wc -c` -ne 0 ] && PRINT=printf

git_br() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

prompt() {
	case $? in
	# EXIT_SUCCESS or ^C
	0|130)
		RET=240
		;;
	# Command not found
	127)
		RET=196
		;;
	*)
		RET=202
		;;
	esac

	RET="\033[38;5;${RET}m"
	RET="\n\033[1;34m$(pwd)\033[0m  $(git_br)\n${RET}- \033[0m"
	
	$PRINT $RET
}

PS1="$(prompt)"