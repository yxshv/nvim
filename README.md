# ~/.config/nvim

My Neovim config

![an image of my neovim config, opened in alacritty terminal](https://github.com/yxshv/nvim/assets/93475253/a64bc730-08c9-4769-a8f4-b3d0bb24830f)
> The terminal used is [alacritty](https://alacritty.org/)

## Usage

After cloning this repo in your config directory

Install packer from https://github.com/wbthomason/packer.nvim

Then just run

```
nvim +PackerSync
```
> You can also run `:PackerSync` inside nvim


<details>
<summary><strong>How to add more languages for lsp (autocomplete & errors & go to definition) and synax highlight?</strong></summary>
<br>
<br>

Inside `neovim`

- For Syntax Highlight: `:TSInstall <language_name>`
- For LSP: `:MasonInstall <language_name>`
> You can use tab to autcomplete the names of language
</details>

## Keybindings

### Tabs

- `te` - create a new tab
- `TAB` - move to the next tab
- `SHIFT+TAB` - move to the previous tab

### Terminal

- `CTRL+SPACE` - Toggling terminal

### File Finders

- `sf` - File browser
- `;f` - Fuzzy finder

### LSP

- `,e` - Open diagnostic
- `,p` - Move to next diagnostic
- `,,p` - Move to previous diagnostic
- `,q` - Open a tab with listing all the diagnostics


- `,d` - Get declaration (same as hovering on any other IDE)
- `,f` - Format code

## Plugins used

[Packer](https://github.com/wbthomason/packer.nvim) for managing plugins

- Plenary.nvim - https://github.com/nvim-lua/plenary.nvim
- Telescope.nvim - https://github.com/nvim-telescope/telescope.nvim
- Telescope File Browser - https://github.com/nvim-telescope/telescope-file-browser.nvim
- bufferline.nvim - https://github.com/akinsho/bufferline.nvim
- vim-floaterm - https://github.com/voldikss/vim-floaterm
- kanagawa.nvim - https://github.com/rebelot/kanagawa.nvim
- Lualine.nvim - https://github.com/nvim-lualine/lualine.nvim
- nvim-treesitter - https://github.com/nvim-treesitter/nvim-treesitter
- nvim-lspconfig - https://github.com/neovim/nvim-lspconfig
- nvim-cmp - https://github.com/hrsh7th/nvim-cmp
- cmp-buffer - https://github.com/hrsh7th/cmp-buffer
- cmp-nvim-lsp - https://github.com/hrsh7th/cmp-nvim-lsp
- lspkind.nvim - https://github.com/onsails/lspkind.nvim
- LuaSnip - https://github.com/L3MON4D3/LuaSnip
- mason.nvim - https://github.com/williamboman/mason.nvim
- nvim-autopairs - https://github.com/windwp/nvim-autopairs
