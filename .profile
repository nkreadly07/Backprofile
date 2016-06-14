# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

##Bash Prompt##
PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "

##Custom Aliases ##
#alias syncmovies='sudo rsync -h -v -r -P -t ~/Transmission ~/Lamb/Plex/Movies/'
alias syncmovies='scp -r noorbutt@192.168.1.244:/home/noorbutt/Downloads /home/noorbutt/Lamb/PlexOne/Movies/'

alias transfer='scp -r noorbutt@192.168.1.206:/home/noorbutt/Downloads /home/noorbutt/Lamb/transfer/'



alias update='sudo apt-get update && sudo apt-get upgrade'
alias cleanup=' sudo apt-get autoremove && sudo apt-get autoclean'

alias install='sudo apt-get install'

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'
echo
echo -e "\e[34mWelcome home Noorbutt!! Dont forget about these sweet Alias commands!"  
echo -e "\e[31msyncmovies-cleanup-install" && echo
echo -e "\e[35mThe server has been up for" 
#   upt - show just the system uptime, days, hours, and minutes
echo -e " \e[32m"

./uptime.sh

