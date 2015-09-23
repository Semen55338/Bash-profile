# If not running interactively, don't do anything
[ -z "$PS1" ] && return
 
# Test for an interactive shell. There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
 
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
 
# Include ~/.bashrc.d/* if it exists
load_bashrc_files() {
    declare -a files=(
        $HOME/.bashrc.d/aliases
        $HOME/.bashrc.d/paths
        $HOME/.bashrc.d/terminal
        $HOME/.bashrc.d/other
        $HOME/.bashrc.d/functions/* # Functions
        $HOME/.bash_profile.local # Local and private settings not under version control (e.g. git credentials)
    )

    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
    done
}

load_bashrc_files
unset load_bashrc_files

# комментарий хуентарий
