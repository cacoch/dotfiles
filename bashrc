# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

PATH=$PATH:~/bin

alias cal='cal -m'
# when terminal went crazy
alias cls='echo -e "\033c" ; stty sane; setterm -reset; reset; tput reset; clear'
alias cp='cp -i'

# mpv https://www.youtube.com/watch?v=ksmojX1VsT8



# starting X with:  startx /usr/bin/i3 I get the following error message: 
# (EE) xf86OpenConsole: Cannot open virtual console 7 (Permission denied)
# Solution : startx /usr/bin/i3 -- vt1
# where 1 is number terminal where I'm logged, if not 1, adjust to command 
