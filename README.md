# vim
Vim configuration for personal use.

## how to use this repository
1. clone this repository into ~/vim
``` shell
cd ~
git clone https://github.com/florianmaier101178/vim.git
```

2. execute [setup script](https://github.com/florianmaier101178/vim/blob/master/setup.sh)
``` shell
./setup.sh
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
- netrw
It's not really a plugin, it comes with vim
```Shell
<leader>e -opens netrw in current window
e.g. ,e
<leader>ev - opens netrw in horizontal split
<leader>eh - opens netrw in vertical split
:Explore - opens netrw in current window
:Sexplore - opens netrw in horizontal split
:Vexplore - opens netrw in vertical split

i - cycle through 4 different views
```
- molokai.vim (https://github.com/tomasr/molokai)
- paste.vim (https://github.com/enricobacis/paste.vim)
``` shell
<leader>v
e.g. ,v
```
- ctrlp.vim (https://github.com/kien/ctrlp.vim)
``` shell
<c-p> to open fuzzy file search
<leader>b to open the files in buffers
e.g. ,b

:h ctrlp
<c-f> and <c-b> to cycle between mode
<c-r> to switch to regexp mode
<c-d> to switch to filename only search instead of full path
<c-o> to open the file
<c-v> to open file in a vsplit
<c-x> to open file in a split
f5 will clear the CtrlP cache (useful if you add new files during the session)
```
- vim-airline (https://github.com/vim-airline/vim-airline)
- vim-fugitive (https://github.com/tpope/vim-fugitive)
```
:GStatus shows the git status
:Git <any command> runs any git command
```
