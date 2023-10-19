
<h1 align="center">
  <br>
  Vim Like Me.
  <br>
</h1>

<h4 align="center">A minimal Bash Sript that replicates my vim configuration on any linux machine.</h4>


<p align="center">
  <a href="#how-to-use">How To Use</a> •
  <a href="#license">License</a>
</p>


## How To Use

Download the Vim Like Me script raw from this repository.
From your command line:

```bash
# Make the script executable
$ chmod +x ./VimlikeMe.sh

# Run The Script
$ ./VimlikeMe.sh
```
# Neovim 
## Install the config

Make sure to remove or backup your current `nvim` directory

```sh
git clone https://github.com/LunarVim/Launch.nvim.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim)

## Get healthy

Open `nvim` and enter the following:

```
:checkhealth
```

You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

- On mac `pbcopy` should be builtin

- On Ubuntu

  ```sh
  sudo apt install xsel # for X11
  sudo apt install wl-clipboard # for wayland
  ```

Next we need to install python support (node is optional)

- Neovim python support

  ```sh
  pip install pynvim
  ```

- Neovim node support

  ```sh
  npm i -g neovim
  ```

We will also need `ripgrep` for Telescope to work:

- Ripgrep

  ```sh
  sudo apt install ripgrep
  ```

---

**NOTE** make sure you have [node](https://nodejs.org/en/) installed, I recommend a node manager like [fnm](https://github.com/Schniz/fnm).

## Fonts

I recommend using the following repo to get a "Nerd Font" (Font that supports icons)

[getnf](https://github.com/ronniedroid/getnf)

**NOTE** Some are already setup as examples, remove them if you want

---


## License

GNU General Public License v3.0


<h1 align="center">
  <br>
  Kitty.
  <br>
</h1>

<h4 align="center">Terminal Emulator i use with my vim setup.</h4>


## How I Use It

- download the raw Kitty.conf file curl or wget it, or even use the download button from github.
- save it to ~/.config/kitty/kitty.conf
- Download [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip) , then move the *.ttf* files to ~/.fonts
- install **picom** using your package manager
- install [Zap](https://www.zapzsh.org/)

**NOTE**
> if you are having problems with zsh suggestions being blackened out add this ```ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'``` at the bottom of the *.zshrc* file that zap created


----

> Telegram [Me](https://t.me/chill_vibez) &nbsp;&middot;&nbsp;
> Twitter [Me](https://twitter.com/DawitSharon_)

