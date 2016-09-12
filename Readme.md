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

This sets up basic configs for:

* vim
  * Plugin manager: [vim-plug](https://github.com/junegunn/vim-plug).
  * Status line: [vim-airline](https://github.com/bling/vim-airline).
* zsh
  * Plugin manager: [zgen](https://github.com/tarjoilija/zgen).
* tmux
  * Status line: [tmuxline.vim](https://github.com/edkolev/tmuxline.vim).
    Please note this is a **vim** plugin that can generate a tmux style from the
    vim-airline theme you have.
* git
  * Most of the gitignore defaults pulled from [gitignore.io](https://gitignore.io).
* ssh (shortcuts)

If you work at Google, there are some Google-specific things I only have on an
internal branch. Send me an email if you want that stuff.

#### Notes

To use vim-airline and tmuxline.vim properly, you need a patched font from
[here](https://github.com/powerline/fonts). There is also a Monaco (OS X
standard) patched font available
[here](https://gist.github.com/rogual/6824790627960fc93077#file-monaco-for-powerline-otf).
