#!/bin/zsh

alias short='PREV=$PS1 ; PS1=$SROMPT'
alias revert='PS1=$PREV'

# some ls aliases
alias ll='ls -alh'
alias la='ls -A'
alias l='ls -CFlh'
alias woo='fortune'
alias lsd="ls -alF | grep /$"
alias lss='clear; ls -lh'

# cd aliases
alias back='cd ./..'
alias ..='cd ./..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../..'
cs() {
    cd "$@"
    lss
}

# anagrams
alias maek='make'
alias amke='make'
alias mkae='make'
alias reste='reset'
alias reest='reset'

pdf () {
    evince $1 &
}

alias bashrc='sublime ~/.bashrc'
alias zshrc='sublime ~/.zshrc'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

alias zshconfig="sublime ~/.zshrc"
alias ohmyzsh="sublime ~/.oh-my-zsh.sh"

alias cal='ncal -b'
alias easter='cal -o'

alias bc='bc -l'
alias temp='istats'

alias aliases='sublime ~/.oh-my-zsh/custom/aliases.zsh'
alias gitlg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gc="git checkout"

alias betty="~/betty/main.rb"
eval "$(thefuck --alias)"

#Extract almost any archive
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        p7zip -d $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

alias ccat='source-highlight --out-format=esc -o STDOUT -i'

pdf () {
	evince $1 &
}

alias sz="source ~/.zshrc"



if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac


# This is GOLD for finding out what is taking so much space on your drives!
alias diskspace="du -S | sort -n -r |more"

# Show me the size (sorted) of only the folders in this directory
alias dirs="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

# This will keep you sane when you're about to smash the keyboard again.
alias frak="fortune"

# handy short cuts #
alias h='history'
alias j='jobs -l'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias vi=vim
alias svi='sudo vi'
alias subl='sublime'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -i'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias sz='source ~/.zshrc'
alias vz='emacs ~/.zshrc'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias home='cd ${HOME}'

alias e="emacs"
alias top="htop"

# # Load command-not-found on Debian-based distributions.
# if [[ -s '/etc/zsh_command_not_found' ]]; then
#   source '/etc/zsh_command_not_found'
# # Load command-not-found on Arch Linux-based distributions.
# elif [[ -s '/usr/share/doc/pkgfile/command-not-found.zsh' ]]; then
#   source '/usr/share/doc/pkgfile/command-not-found.zsh'
# # Return if requirements are not found.
# else
#   return 1
# fi

encAES () {
    openssl enc -AES256 -in $1 -out $1.encrypted
}

decAES () {
    INPUT=$1
    if [[ $INPUT != *.encrypted ]] ; then
        echo "File must have .encrypted suffix"
        return -1
    else
        OUTPUT=${INPUT:0:-10}
        echo $OUTPUT
    fi
    openssl enc -d -AES256 -in $INPUT -out $OUTPUT
}
