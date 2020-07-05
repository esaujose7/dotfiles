# Usage

Do a symbolic link to where the config file needs to be, for example:

If we pulled this project on our home folder, we would be in: ~/dotfiles

Then, to make a symbolic link of the config file of the .vimrc (or init.vim if we are using neovim) the command is:

```bash
ln -s $HOME/dotfiles/vim/init.vim $HOME/.config/nvim/init.vim
```
