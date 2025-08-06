#!/bin/bash

. $DIR/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto verbose"
GIT_PS1_SHOWCOLORHINTS=1

#WHITEONRED="\e[37;41;1;51m"
#GREENONRED="\e[41;32;1m"
#WHITEONGREEN="\e[37;42;1m"
#BLUEFG="\e[34m"
#RESET="\e[00m"
#GREENFG='\[\033[01;32m\]'
#BLUEFG='\[\033[01;34m\]'
#RESET='\[\033[00m\]'

__get_command_status() {
	res=$?
	if [ $res -eq 0 ]; then
		echo -e "\e[32m☺ \e[0m"
	else
		echo -e "\e[31m☹ 🖛  $res\e[0m"
	fi
}

__get_debian_chroot() {
	echo "\${debian_chroot:+ \$debian_chroot │}"
}

__get_time() {
	echo " 🕑\\A "
	#echo "$WHITEONGREEN 🕑\\A"
}

__get_hostname() {
	echo " 💻\\h "
}

__get_user() {
	echo " 🕵 \\u "
	# echo "$GREENONRED▓▒░$WHITEONRED 🕵 \\u $RESET"
}

__get_work_dir() {
	echo " 🗁  \\w "
	#echo "$BLUEFG🗁 \\w$RESET"
}

__get_ps1() {
	export PS1="┌┤$(__get_debian_chroot)\$(__git_ps1 \" 🛠 %s │\")\e[1m$(__get_time)│$(__get_user)│$(__get_hostname)│$(__get_work_dir)\e[0m\\n└─\$(__get_command_status)─\$ "
}

__get_ps1
