# nvim-config-lua

My NeoVim configuration in lua.

Based on [the Primeagen](https://www.youtube.com/@ThePrimeagen)'s video. ([0 to LSP : Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE))

## Setup


### NeoVim packages

Requires at least NeoVim 0.9

#### Installation on Fedora 37

At the time of the creation of this repository, we need to install neovim from Fedora Updates Testing repository :

```
sudo dnf --enablerepo=updates-testing install neovim python3-neovim
```

### Cloning the configuration

Go to your .config directory, clone the repository then load the packer.lua file.  
When the file is open, source it, run PackerSync and reload nvim.

```
$ cd ~/.config
$ git clone https://github.com/guttadauriaa/nvim-config-lua.git
$ nvim ~/.config/nvim/lua/adriano/packer.lua
:so
:PackerSync
:qa
```

