export HOST=`hostname`
export OS=LINUX
export PATH=.:/usr/local/bin:/usr/bin:/bin
export EDITOR=/usr/bin/vi
export LANG=ja_JP.UTF-8

export USER=`whoami`
export EDITOR=vi
export VISUAL=vi
export PAGER=less
export LESSCHARSET=utf-8
export TMPDIR=/tmp
export PROMPT_COMMAND='echo -ne "\033P\033]0;${PWD}\007\033\\"'
export DISPLAY=:0.0

umask 022

# Default shell configuration
autoload colors
colors

PROMPT="%{${fg[red]}%}[%n@%m] (%T) %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[red]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="%{${fg[red]}%}[%~]%{${reset_color}%}"

# gnome-terminal chage title
function changetitle {
  current_dir=`pwd | sed -e "s%\(/\([^.]\|\..\)\)[^/]*%\1%g"``pwd | sed -e "s%^.*/\([^.]\|\..\)\([^/]*\)$%\2%"`
  title=${current_dir}
  case "${TERM}" in
    xterm*|kterm*|rxvt*)
      echo -ne "\033]0;${title}\007"
    ;;
    screen*)
      echo -ne "\033P\033]0;${title}\007\033\\"
    ;;
  esac
}

setopt nolistbeep
bindkey -e

# Command history configuration
HISTSIZE=30
SAVEHIST=30

# Common Aliases
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
alias cw="cd ~/catkin_ws"

# cdとlsの省略
setopt auto_cd
function chpwd() { ls && changetitle}

autoload -U compinit
compinit

