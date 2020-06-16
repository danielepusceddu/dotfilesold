## My Dotfiles
These are my config files for some of the Linux programs that I use.

I use the "bare git repository" method: https://www.atlassian.com/git/tutorials/dotfiles

```
cd ~
git clone --bare https://github.com/danielepusceddu/dotfiles.git .dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
