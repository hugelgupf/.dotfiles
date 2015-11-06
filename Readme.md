## My dotfiles
--------------
Just a collection of a few dotfiles.

I use [rcm](https://github.com/thoughtbot/rcm).

Setup after installing rcm:

```bash
    rcup rcrc
    rcup
```

Please note this repository has submodules. To clone it all:

```bash
    git clone --recursive git@github.com:hugelgupf/.dotfiles.git
```

### Tools
---------

This sets up basic configs for:

* vim
  * Plugin manager: [Vundle](https://github.com/VundleVim/Vundle.vim).
  * Status line: [vim-airline](https://github.com/bling/vim-airline).
* zsh
  * Plugin and theme manager: [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
* tmux
  * Status line: [tmuxline.vim](https://github.com/edkolev/tmuxline.vim).
    Please note this is a **vim** plugin that can generate a tmux style from the
    vim-airline theme you have.
* git
  * Most of the gitignore defaults pulled from [gitignore.io](https://gitignore.io).
* Google-specific things (vim, zsh)
* ssh (shortcuts)

#### Notes

To use vim-airline and tmuxline.vim properly, you need a patched font from
[here](https://github.com/powerline/fonts).
