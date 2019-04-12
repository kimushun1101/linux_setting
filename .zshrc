#
#   .zsh configuration file for Linux PC#	
#
export HOST=`hostname`
export OS=LINUX
export PATH=.:/usr/local/bin:/usr/bin:/bin
export LD_LIBRARY_PATH=/lib:/usr/local/lib:${LD_LIBRARY_PATH}
export MANPATH=/usr/local/share/man:/usr/share/man
export EDITOR=/usr/local/bin/ng
export LANG=ja_JP.UTF-8

export XMODIFIERS=@im=SCIM

export USER=`whoami`
export EDITOR=ng
export VISUAL=ng
export PAGER=less
export LESSCHARSET=utf-8
export PRINTER=sadaie
export DOMAINNAME=sc.ctrl.titech.ac.jp
export TMPDIR=/tmp
export MATX_HISTFILE=~/.matx_history	# for matx
export MATX_HISTSIZE=20		# for matx

export PROMPT_COMMAND='echo -ne "\033P\033]0;${PWD}\007\033\\"'

#if [ $TERM != dumb && $TERM != linux && $?SSH_CLIENT == 0 ]; then
#	export DISPLAY=`who am i | sed -n -e 's/.*(\([^:.]*\)[:]*.*).*/\1:0.0/p'`
#	if [$DISPLAY == '' && $TERM == linux]; then
#		export DISPLAY=''
#	fi
#fi

umask 022

## Default shell configuration
#
# set prompt
#
autoload colors
colors

PROMPT="%{${fg[red]}%}[%n@%m] (%T) %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[red]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[red]}%}[%~]%{${reset_color}%}"

# gnome-terminal chage title
#
function changetitle {
  current_dir=`pwd | sed -e "s%\(/\([^.]\|\..\)\)[^/]*%\1%g"``pwd | sed -e "s%^.*/\([^.]\|\..\)\([^/]*\)$%\2%"`
  # タイトル用に整形
#  title=[${USER}@${HOST%%.*}]${current_dir}
  title=${current_dir}
  case "${TERM}" in
    xterm*|kterm*|rxvt*)
      echo -ne "\033]0;${title}\007"
    ;;  
    screen*)
      echo -ne "\033P\033]0;${title}\007\033\\"
#      echo -ne "\033P\033]0;${PWD}\007\033\\"
    ;;  
  esac
}



# noautoremoveslash beep sound when complete list displayed
#
setopt nolistbeep

## Keybind configuration
# emacs like keybind (e.x. Ctrl-a goes to head of a line and Ctrl-e goes to end of it)
bindkey -e

## Command history configuration
#
HISTSIZE=30
SAVEHIST=30

#   Common Aliases
#
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -alh"
alias lf="ls -F"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias x="exit"
alias h="history"
alias df="df -h"
alias du="du -h"
alias less="less -r"
#alias lm="latexmk -pvc -halt-on-error"
alias lm="latexmk -pvc"
alias lmb="latexmk -pvc -xelatex -halt-on-error -shell-escape -synctex=1"
alias libre="libreoffice"
alias open="xdg-open" 
alias ink="inkscape"

#cdとlsの省略
setopt auto_cd
function chpwd() { ls && changetitle}

# 補完
autoload -U compinit
compinit


#clear
