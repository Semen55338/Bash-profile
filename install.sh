cat > ~/.bash_profile << "EOF"
#!/bin/bash

load_bash_profile_files() {
    declare -a files=(
        $HOME/.bashrc.d/bash_colors # Custom color
        $HOME/.bashrc.d/bash_prompt # Custom bash prompt
        $(brew --prefix)/etc/bash_completion # Bash completion (installed via Homebrew)
    )

    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
    done
}

load_bash_profile_files
unset load_bash_profile_files

if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
EOF

cat > ~/.bashrc << "EOF"
#!/bin/bash

load_bashrc_files() {
    declare -a files=(
        $HOME/.bashrc.d/bash_options # Options
        $HOME/.bashrc.d/bash_exports # Exports
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

if [ -f ~/.profile ]; then source ~/.profile; fi
EOF

cat > ~/.profile << "EOF"
#!/bin/bash

# pathhelper from Apple default /private/etc/bashrc, plus empty PATH
# as per http://www.softec.lu/site/DevelopersCorner/MasteringThePathHelper
if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

load_profile_files() {
    declare -a files=(
        $HOME/.bashrc.d/bash_paths # Path modifications
        $HOME/.bashrc.d/bash_aliases # Aliases
    )

    # if these files are readable, source them
    for index in ${!files[*]}
    do
        if [[ -r ${files[$index]} ]]; then
            source ${files[$index]}
        fi
    done
}

load_profile_files
unset load_profile_files
EOF
