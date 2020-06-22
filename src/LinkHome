#!/usr/bin/env bash
# Link elements in the user's home directory to contents that should survive a
# re-installation of the host operating system.
# $1 is a host directory or file.
# $2 is a target directory or file. If no directory exists, create it.
# $3 is the link name for the new directory.

# Internal variables
sn = ""  # Source directory name
tn = ""  # target directory name
sln = ""  # Name of symbolic link

# Validate the parameters
# Validate the symbolic link name
if [[ $3 exists ]]; then
    sln = $3
else
    echo "The symbolic link name must be supplied" >&2
fi

# Validate the target directory
if [[ $2 -ne ""  ]]; then
    # The target directory has been specified
    tn = $2
    if [[ ! tn exists ]]; then
        # The target does not exist - create it.
        mkdir tn
    else
        # The target already exists.
        tn = $2 
    fi          
else
    # The target has not been specified.
    echo "The target file or directory of the symbolic"
         " link must be specified" >&2
fi

# Validate the source directory
if [[ $1 exists ]]; then
    # The source exists
    sn = $1
    echo "Do you want to preserve the contents of $1 in $2 (y/n)?"
    read -s -n 1 preserve
    if [[ preserve -eq "y" || preserve -eq "Y" ]]; then
        # User wants to preserve the source contents
    elif [[ preserve -eq "n" || preserve -eq "N" ]]; then
        # The user is not interested in the source contents
    else
        # The user gave an invalid selection
    fi
else
    # No host file/directory was specified.
fi