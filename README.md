# NeoVim Config

Nothing interesting, just my neovim setup.

## Install Instructions
To install, clone this repo to `~/.config/nvim`

Then you need to
- Install Packer plugin manager: [Here](https://github.com/wbthomason/packer.nvim#quickstart) 
- Run `composer install` inside of Phpactor LSP (since it will be installed with Packer, its location is probably `~/.local/share/nvim/site/pack/packer/start/phpactor`)
- Open `packer.lua`, run `:so`, then run `:PackerSync`
