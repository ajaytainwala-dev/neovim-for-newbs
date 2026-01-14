# 🚀 Modernized Neovim Configuration

This is an updated, production-ready Neovim configuration with modern plugins, LSP setup, and advanced features.

## ✨ Updates & New Features

### Core Updates
- ✅ Fixed deprecated `vim.loop` → `vim.uv` for Neovim 0.10+
- ✅ Modernized Lua patterns using `vim.opt` instead of `vim.cmd`
- ✅ Proper plugin architecture with lazy.nvim
- ✅ Enhanced keymaps with better defaults

### New Plugins Added

#### Code Editing & Navigation
- **nvim-autopairs** - Auto-closing brackets and quotes
- **nvim-surround** - Easy surround/quote manipulation (cs, ds, ys)
- **comment.nvim** - Fast comment toggling (gcc, gbc)
- **indent-blankline** - Visual indentation guides
- **mini.nvim** - Superior text objects and utilities
- **nvim-ufo** - Better code folding
- **trouble.nvim** - Diagnostics list (optional)

#### LSP & Completion
- **Enhanced lsp-config** - Added Python, JSON, CSS support
- **conform.nvim** - Modern code formatter with async support
- **Enhanced completions** - Added buffer, path sources + better Tab navigation

#### Search & Replace
- **nvim-spectre** - Advanced find & replace across project
- **telescope** - Enhanced with git commands and better layout

#### Git Integration
- **diffview.nvim** - Better diff viewing
- **neogit** - Interactive git UI
- **fugitive.vim** - Git commands (gs, gp, gu, etc.)
- **Enhanced gitsigns** - Better hunk navigation and staging
- **toggleterm.nvim** - Lazygit integration (Ctrl+\)

#### UI & Aesthetics
- **lualine.nvim** - Modern status line with git info
- **catppuccin** - Enhanced theme with integrations
- **which-key.nvim** - Keymap hints and suggestions
- **todo-comments.nvim** - Highlight and track TODO/FIXME/HACK/NOTE comments
- **treesitter-context** - Show function/class context while scrolling

#### Development Tools
- **nvim-dap** - Debugger support (breakpoints, step, etc.)
- **copilot.vim** - GitHub Copilot integration (Ctrl+G in insert mode)

### Configuration Files Structure

```
init.lua                           # Bootstrap & main entry
lua/
├── vim-options.lua                # Vim settings, keymaps, UI
└── plugins/                       # Plugin configurations
    ├── lsp-config.lua             # Language servers
    ├── completions.lua            # Completion engine
    ├── telescope.lua              # Fuzzy finder
    ├── treesitter.lua             # Syntax highlighting & text objects
    ├── catppuccin.lua             # Color scheme
    ├── neo-tree.lua               # File explorer
    ├── gitsigns.lua               # Git signs in editor
    ├── lualine.lua                # Status line
    ├── comment.lua                # Comments
    ├── autopairs.lua              # Auto pairs
    ├── surround.lua               # Surround operations
    ├── indent-blankline.lua        # Indent guides
    ├── mini.lua                   # Mini plugins
    ├── todo-comments.lua          # TODO highlighting
    ├── which-key.lua              # Keymap hints
    ├── conform.lua                # Code formatting
    ├── diffview.lua               # Git diff viewer
    ├── fugitive.lua               # Git integration
    ├── neogit.lua                 # Interactive git
    ├── toggleterm.lua             # Terminal toggle
    ├── undotree.lua               # Undo tree
    ├── spectre.lua                # Find & replace
    ├── nvim-dap.lua               # Debugger
    ├── copilot.lua                # Copilot AI
    ├── formatter.lua              # Code formatting (legacy)
    ├── nvim-ufo.lua               # Code folding
    ├── treesitter-context.lua     # Context display
    ├── alpha.lua                  # Dashboard
    ├── git-stuff.lua              # (legacy/minimal)
    ├── none-ls.lua                # (legacy/minimal)
    ├── oil.lua                    # (legacy/minimal)
    ├── swagger-preview.lua        # (legacy/minimal)
    ├── vim-test.lua               # (legacy/minimal)
    └── nvim-tmux-navigation.lua   # (legacy/minimal)
```

## 📋 Supported Languages

LSP support for:
- **JavaScript/TypeScript** (ts_ls)
- **Python** (pyright)
- **Lua** (lua_ls with vim globals)
- **HTML** (html)
- **CSS** (cssls)
- **JSON** (jsonls)
- **Bash** (bashls)
- **Go, Rust, etc.** (easily add via mason)

## ⌨️ Key Bindings

### Navigation
- `<C-h/j/k/l>` - Navigate between windows
- `<C-p>` - Find files
- `<C-n>` - Toggle file tree

### LSP
- `K` - Hover documentation
- `<leader>gd` - Go to definition
- `<leader>gr` - Find references
- `<leader>ca` - Code action
- `<leader>rn` - Rename
- `<leader>f` - Format code

### Git
- `<leader>gs` - Git status
- `<leader>gd` - Diff view
- `<leader>gg` - Lazygit
- `<leader>go` - Neogit
- `]h`/`[h` - Next/prev hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk

### Editing
- `gcc` - Comment line
- `cs'"` - Change surround quotes
- `<A-j/k>` - Move lines
- `<leader>S` - Find & replace (Spectre)

### Other
- `<C-\>` - Toggle terminal
- `<leader>ut` - Undo tree
- `<leader>fw` - Grep word
- `<leader>db` - Toggle breakpoint (Debug)

See [KEYMAPS.md](./KEYMAPS.md) for complete list.

## 🔧 Installation & Setup

### Prerequisites
```bash
# Neovim 0.10+
nvim --version

# Install language servers (optional, auto-installed via mason)
# npm install -g typescript ts-node
# pip install pyright black
```

### First Run
```bash
# Lazy.nvim will auto-install on first launch
nvim
# Press any key to dismiss dashboard
# Plugins will install automatically
```

### Install Language Servers
Inside Neovim:
```vim
:Mason
# Browse and install needed language servers
```

### Optional Formatters
```bash
# JavaScript/TypeScript
npm install -g prettier

# Python
pip install black isort

# Lua
cargo install stylua  # or: luarocks install stylua
```

## 🎨 Customization

### Change Theme
Edit [catppuccin.lua](./lua/plugins/catppuccin.lua):
```lua
flavour = "latte", -- latte, frappe, macchiato, mocha
```

### Add Language Server
Edit [lsp-config.lua](./lua/plugins/lsp-config.lua) and add:
```lua
lspconfig.your_server.setup({
  capabilities = capabilities,
})
```

Then install via `:Mason`

### Disable Plugins
In [init.lua](./init.lua) or plugin file, set:
```lua
enabled = false,
```

## 📚 Plugin Documentation

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configs
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [catppuccin](https://github.com/catppuccin/nvim) - Color scheme
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) - Debugger

## 🚨 Troubleshooting

### Plugins not loading
```vim
:Lazy sync
:checkhealth
```

### LSP not working
```vim
:Mason  " Install language servers
:LspInfo  " Check LSP status
```

### Slow startup
```vim
:Lazy profile  " Check plugin load times
```

### Terminal issues
- Make sure shell path is correct: `:echo $SHELL`
- Windows users: Ensure you have a terminal (PowerShell, Git Bash, etc.)

## 📖 Next Steps

1. Explore plugins with `:help <plugin-name>`
2. Customize keymaps in [vim-options.lua](./lua/vim-options.lua)
3. Add project-specific settings in `.nvim.lua` or `.exrc`
4. Install formatters and linters for your languages
5. Configure DAP debuggers for your stack

---

**Happy coding! 🎉**
