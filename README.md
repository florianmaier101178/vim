# vim
Vim configuration for personal use.

## how to use this repository
1. clone this repository into ~/vim
``` shell
cd ~
git clone https://github.com/florianmaier101178/vim.git
```
2. link your local ~/.vimrc file to ./vim/vimrc
``` shell
ln -s ~/vim/vimrc ~/.vimrc
```
3. link your local ~/.vim directory to ./vim/vim
``` shell
ln -s ~/vim/vim ~/.vim
```

## plugins
Plugins are managed via vim-plug (https://github.com/junegunn/vim-plug).

### usage of vim-plug
Reload .vimrc and `:PlugInstall` to install plugins.

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |

### installed plugins
- molokai.vim (https://github.com/tomasr/molokai)

Molokai colorscheme
- paste.vim (https://github.com/enricobacis/paste.vim)
``` shell
<leader>v
e.g. ,v
```
