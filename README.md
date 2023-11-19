# dotfiles

## Bootstrap
To start syncing dotfiles to a new system
```
echo ".cfg" >> .gitignore
git clone --bare git@github.com:gmccance/dotfiles.git $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

Start a fresh shell so the configuration alias is live 

Create some directories and maintain them
* systemctl enable --user --now systemd-tmpfiles-setup.service
* systemctl enable --user --now systemd-tmpfiles-clean.timer

## Inspiration
Method used is [atlassian one](https://www.atlassian.com/git/tutorials/dotfiles) via @traylenator.
