# My neovim cnofig

This workspace contains the Neovim config that I use

## Installed Tools

Installed with Homebrew:

```sh
brew install neovim ripgrep fd fzf pyright typescript-language-server vscode-langservers-extracted tailwindcss-language-server flow tree-sitter-cli
```

Swift support uses Xcode's `sourcekit-lsp`.

Astro support is installed through Mason because Homebrew does not provide an Astro language-server formula.

## Features

- System clipboard copy/paste
- LSP diagnostics, completion, hover, go-to-definition, references, and formatting
- Autocomplete with `nvim-cmp`
- Snippets with `LuaSnip`
- Treesitter syntax highlighting and indentation
- Telescope fuzzy finder
- Telescope file browser
- Floating terminal
- Tabs/buffers with Bufferline
- Statusline with Lualine
- Kanagawa theme
- Transparent editor background

## Language Support

LSP support:

- Python: `pyright`
- JavaScript / TypeScript: `typescript-language-server`
- HTML: `vscode-html-language-server`
- CSS / SCSS / Less: `vscode-css-language-server`
- Tailwind CSS: `tailwindcss-language-server`
- Swift: `sourcekit-lsp`
- Astro: `astro-ls` via Mason
- Flow: `flow`

Treesitter parsers:

- Astro
- CSS
- HTML
- JavaScript
- JSON
- Python
- Swift
- TSX
- TypeScript

Lua and Elixir support were intentionally skipped.

## Keybindings

Tabs:

- `te` - create a new tab
- `Tab` - next tab/buffer
- `Shift+Tab` - previous tab/buffer

Terminal:

- `Ctrl+Space` - open/toggle floating terminal

Finders:

- `sf` - file browser
- `;f` - find files
- `;r` - live grep
- `\\` - list buffers
- `;t` - help tags
- `;;` - resume Telescope
- `;e` - diagnostics picker

LSP:

- `,e` - open diagnostic float
- `,p` - next diagnostic
- `,,p` - previous diagnostic
- `,q` - diagnostics list
- `,d` - hover/type info
- `,f` - format current buffer
- `gd` - go to definition
- `gD` - go to declaration
- `gi` - go to implementation
- `gr` - references
- `K` - hover/type info

Clipboard:

- `<leader>y` - copy selection to system clipboard
- `<leader>Y` - copy line to system clipboard
- `<leader>p` - paste from system clipboard
- `<leader>P` - paste before from system clipboard

The leader key is `Space`.

## Plugin Management

Plugins are managed by `lazy.nvim`.

Useful commands inside Neovim:

```vim
:Lazy
:Lazy sync
:Mason
:checkhealth
```

Treesitter commands:

```vim
:TSInstall <language>
:TSUpdate
```

LSP commands:

```vim
:LspInfo
:LspStart
:LspRestart
:LspStop
```

## Config Layout

```text
~/.config/nvim/
  init.lua
  lua/
    config/
      keymaps.lua
      lazy.lua
      options.lua
    plugins/
      autocomplete.lua
      editor.lua
      lsp.lua
      treesitter.lua
      ui.lua
```

The same staged config is also available in this workspace at:

```text
outputs/nvim/
```

## Verification

The config was checked with:

```sh
nvim --headless "+qa"
```

That command exits cleanly.
