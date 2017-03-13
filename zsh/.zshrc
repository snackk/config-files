# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#ALIAS SECTION

alias ls='ls -lA --color'

#SSH CONNECTIONS
alias owncloud='ssh -p 1337 pi@owncloud.flnet.org'
alias owncloud_temp='ssh -p 1337 pi@owncloud.flnet.org "/opt/vc/bin/vcgencmd measure_temp"'
alias sigma='ssh ist173972@sigma.ist.utl.pt'
alias ssh_generate='ssh-keygen -t rsa'

#PACMAN
alias pacman_orphans='pacman -Qdt'
alias pacman_installed='pacman -Qen'
alias aur_installed='pacman -Qem'
alias pacman_remove_orphans='sudo pacman -Rns $(pacman -Qtdq)'
alias pacman_new='find / -regextype posix-extended -regex ".+\.pac(new|save|orig)" 2> /dev/null'

#GITHUB
alias git_setup_user='git config --global user.name "snackk"'
alias git_setup_password='git config --global user.email santos_matrix@sapo.pt'
alias git_list='git config --list'

#UTILS
alias generate_lostFiles='lostfiles > ~/Downloads/LostFiles.txt'
alias checkProblems='journalctl -p 0..3 -xn'
alias flushdns='sudo nscd -K && nscd'
alias wired='sudo iplink set enp8s0 up && sudo dhcpd enp8s0'
alias cleanHistory='history -c && cat /dev/null > .bash_history'

#PS1
#PS1="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[1;31m\]\u'; else echo '\[\033[1;30m\]\u\[\033[1;31m\]@\[\033[1;37m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[1;37m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

#Compiladores
export CVSROOT=":ext:ist173972@sigma.ist.utl.pt:/afs/ist.utl.pt/groups/leic-co/co17/cvs/73972"
export CVS_RSH=ssh
