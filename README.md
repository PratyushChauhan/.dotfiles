### Replicate

```
git clone --bare https://github.com/PratyushChauhan/.dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```
### Install packages

https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#List_of_installed_packages

