## What is this?
This repo contains Leon's config files. It is a bare git repository, i.e. it does not have a working tree.

## Creation
```
git init --bare $HOME/.cfg.git
alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'" >> $HOME/.bashrc
```
