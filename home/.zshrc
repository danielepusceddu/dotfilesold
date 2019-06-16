# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000
setopt appendhistory autocd notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
autoload -Uz compinit
compinit
# End of lines added by compinstall

[ -e ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) || 
    eval $(dircolors -b)

#My ENV .
dot=$HOME"/.dotfiles"
hdd="/mnt/Reborn"
prog=$hdd"/Programming"
anime=$hdd"/Videos/Anime"
youtube=$hdd"/Videos/Youtube"
screens=$hdd"/Images/Screenshots"

#Modifying PATH
export PATH="$PATH:$HOME/.config/scripts"

#Default Editor
export VISUAL=nvim

#Default Terminal
export TERMCMD="termite"

#My Aliases
alias randcow="cowsay -f \$(ls /usr/share/cowsay/cows/ | shuf -n 1)"
alias sxiv="sxiv -a"
alias setCC="export CC=/usr/bin/clang; export CXX=/usr/bin/clang++"
alias termvid="mpv --vo=tct"
alias rback="rsync -r --progress -v -a -s --delete"
alias pacup="sudo pacman -Syu"
alias pacrm="sudo pacman -Rns"
alias pacget="sudo pacman -S"
alias pacinf="pacman -Si"
alias pacsearch="pacman -Ss"

alias vi="nvim"
#alias godsword="echo $(shuf -n 10 /usr/share/dict/words  --random-source=/dev/urandom | tr '\n' ' ')"

# Tell me more
alias mkdir='mkdir -v'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'
alias tar='tar -v'

# Pywal. I don't need these, I modify my terminal's config instead.
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# dal cursor color for vi's insert/normal modes.
# http://stackoverflow.com/questions/30985436/
# https://bbs.archlinux.org/viewtopic.php?id=95078
# http://unix.stackexchange.com/questions/115009/
zle-line-init () {
  zle -K viins
  #echo -ne "\033]12;Grey\007"
  #echo -n 'grayline1'
  echo -ne "\033]12;Gray\007"
  echo -ne "\033[4 q"
  #print 'did init' >/dev/pts/16
}
zle -N zle-line-init
zle-keymap-select () {
  if [[ $KEYMAP == vicmd ]]; then
    if [[ -z $TMUX ]]; then
      printf "\033]12;Green\007"
      printf "\033[2 q"
    else
      printf "\033Ptmux;\033\033]12;red\007\033\\"
      printf "\033Ptmux;\033\033[2 q\033\\"
    fi
  else
    if [[ -z $TMUX ]]; then
      printf "\033]12;Grey\007"
      printf "\033[4 q"
    else
      printf "\033Ptmux;\033\033]12;grey\007\033\\"
      printf "\033Ptmux;\033\033[4 q\033\\"
    fi
  fi
  #print 'did select' >/dev/pts/16
}
zle -N zle-keymap-select

zstyle :compinstall filename '/home/valvey/.zshrc'



