# 📚 Neovim Configuration Index

Welcome to your modernized Neovim setup! This index helps you navigate the documentation and understand the configuration.

## 🎯 Start Here

### For First-Time Users
1. Read [README.md](./README.md) - Complete setup guide
2. Run setup script: `bash setup.sh` (macOS/Linux) or `setup.bat` (Windows)
3. Launch Neovim: `nvim`
4. Install language servers: `:Mason`
5. Start coding!

### For Quick Reference
- **All Keybinds:** [KEYMAPS.md](./KEYMAPS.md)
- **What Changed:** [UPDATES.md](./UPDATES.md)
- **File Guide:** [STRUCTURE.md](./STRUCTURE.md)
- **Having Issues?** [TROUBLESHOOTING.md](./TROUBLESHOOTING.md)
- **Quick Overview:** [SUMMARY.md](./SUMMARY.md)

---

## 📖 Documentation Map

### 📘 Primary Guides

| Document | Purpose | Read Time |
|----------|---------|-----------|
| [README.md](./README.md) | Features, setup, installation | 15 min |
| [KEYMAPS.md](./KEYMAPS.md) | All keyboard shortcuts | 5 min |
| [SUMMARY.md](./SUMMARY.md) | Visual overview & highlights | 10 min |
| [UPDATES.md](./UPDATES.md) | What was modernized | 8 min |

### 📗 Reference Guides

| Document | Purpose | Read Time |
|----------|---------|-----------|
| [STRUCTURE.md](./STRUCTURE.md) | File organization & editing guide | 10 min |
| [TROUBLESHOOTING.md](./TROUBLESHOOTING.md) | Common issues & solutions | As needed |

---

## 🎮 Quick Start Commands

```lua
-- In Neovim:
:checkhealth          -- Verify setup
:Lazy                 -- Plugin manager
:Mason                -- Language servers
:Telescope find_files -- Find files (or <C-p>)
:LspInfo              -- LSP status
:help nvim            -- Neovim help
```

---

## 🗂️ Configuration Directory Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── vim-options.lua      # Core settings & keybinds
│   └── plugins/             # 30+ plugin configurations
│       ├── lsp-config.lua
│       ├── completions.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       ├── catppuccin.lua
│       ├── neo-tree.lua
│       ├── gitsigns.lua
│       ├── lualine.lua
│       ├── conform.lua
│       ├── copilot.lua
│       └── ... (20+ more)
├── README.md                # This project's guide
├── KEYMAPS.md              # All keyboard shortcuts
├── SUMMARY.md              # Quick visual overview
├── UPDATES.md              # What's new
├── STRUCTURE.md            # File organization
├── TROUBLESHOOTING.md      # Problem solving
└── setup.sh / setup.bat    # Setup verification
```

---

## 🔧 Common Customizations

### Change Theme
1. Open: `lua/plugins/catppuccin.lua`
2. Find: `flavour = "mocha"`
3. Change to: `latte`, `frappe`, or `macchiato`
4. Restart Neovim

### Add Custom Keybind
1. Open: `lua/vim-options.lua`
2. Add your mapping:
```lua
vim.keymap.set('n', '<leader>xy', ':MyCommand<CR>', { noremap = true })
```

### Install New Language Server
1. Open: `lua/plugins/lsp-config.lua`
2. Add configuration for your server
3. Run: `:Mason` and select the server
4. Restart Neovim

### Disable a Plugin
1. Open the plugin file: `lua/plugins/yourplugin.lua`
2. Change `return {` to `return {}` or add `enabled = false,`
3. Restart Neovim

---

## 📊 Plugin Categories

### 🎨 UI & Appearance (6)
- catppuccin (theme)
- lualine (status line)
- which-key (keymap hints)
- indent-blankline (indent guides)
- todo-comments (highlight TODOs)
- treesitter-context (show context)

### 💻 Editing (7)
- nvim-treesitter (syntax)
- nvim-autopairs (auto brackets)
- nvim-surround (surround ops)
- comment.nvim (comments)
- mini.nvim (text objects)
- nvim-ufo (code folding)
- conform.nvim (formatting)

### 🔍 Search & Navigation (4)
- telescope.nvim (fuzzy finder)
- neo-tree.nvim (file tree)
- nvim-spectre (find & replace)
- undotree.nvim (undo tree)

### 🌿 Git (4)
- gitsigns.nvim (git signs)
- vim-fugitive (git commands)
- diffview.nvim (diff viewer)
- neogit (git UI)

### 🛠️ LSP & Completion (3)
- nvim-lspconfig (language servers)
- nvim-cmp (completion engine)
- mason + mason-lspconfig (server manager)

### 🚀 Advanced (4)
- nvim-dap (debugger)
- copilot.vim (AI assistant)
- toggleterm.nvim (terminal)
- none-ls.nvim (linting)

---

## ⚡ Essential Keybinds at a Glance

**Navigation**
- `<C-h/j/k/l>` - Move between windows
- `<C-p>` - Find files
- `<C-n>` - File tree toggle

**LSP**
- `K` - Hover info
- `<leader>gd` - Go to definition
- `<leader>gr` - Find references
- `<leader>ca` - Code action
- `<leader>f` - Format

**Git**
- `<leader>gs` - Git status
- `<leader>gg` - Lazygit
- `]h`/`[h` - Next/prev hunk
- `<leader>hs` - Stage hunk

**Editing**
- `gcc` - Comment line
- `<A-j/k>` - Move lines
- `cs'"` - Change quotes

**Other**
- `<C-\>` - Terminal toggle
- `<leader>S` - Find & replace
- `<Space>?` - Keymap hints

👉 **See [KEYMAPS.md](./KEYMAPS.md) for the complete list!**

---

## 🆘 Need Help?

### Quick Diagnostics
```vim
:checkhealth         " Full health check
:Lazy               " Plugin status
:LspInfo            " LSP status
:Mason              " Server browser
```

### Common Issues
See [TROUBLESHOOTING.md](./TROUBLESHOOTING.md) for:
- Plugins not loading
- LSP not working
- Slow startup
- Terminal issues
- Git features not working
- And more...

### Getting Help
- Neovim Help: `:help nvim`
- Plugin Help: `:help <plugin-name>`
- Online: Check [github.com/neovim/neovim](https://github.com/neovim/neovim)

---

## 📱 Platform-Specific

### macOS
```bash
# Install Neovim
brew install neovim

# Optional tools
brew install node python3 lazygit ripgrep

# Run setup
bash setup.sh
nvim
```

### Linux (Ubuntu/Debian)
```bash
# Install Neovim
sudo apt install neovim

# Optional tools
sudo apt install nodejs python3-pip git lazygit ripgrep

# Run setup
bash setup.sh
nvim
```

### Windows
```bash
# Install Neovim (via Chocolatey)
choco install neovim

# Or download from: https://github.com/neovim/neovim/releases

# Run setup script
setup.bat
nvim
```

---

## 🎓 Learning Resources

### In Neovim
- `:Tutor` - Interactive tutorial
- `:help motion` - Movement guide
- `:help vim.diagnostic` - Diagnostics guide
- `:help lsp` - LSP guide

### External
- [Neovim Docs](https://neovim.io/doc/)
- [Learn Vimscript](http://learnvimscriptthehardway.stevelosh.com/)
- [Neovim Config Guide](https://github.com/nvim-lua/kickstart.nvim)

---

## 🔄 Keeping Updated

### Update Plugins
```vim
:Lazy update
```

### Update Language Servers
```vim
:Mason
" Select servers to update
```

### Update Neovim
- Visit: https://github.com/neovim/neovim/releases
- Or: `brew upgrade neovim` (macOS)

---

## 🤝 Contributing Feedback

Found an issue or have a suggestion?
1. Check [TROUBLESHOOTING.md](./TROUBLESHOOTING.md)
2. Review individual plugin repositories
3. Open an issue on the respective plugin's GitHub

---

## 📋 Configuration Checklist

After installation:
- [ ] Neovim 0.10+ installed
- [ ] `:checkhealth` passes
- [ ] Language servers installed (`:Mason`)
- [ ] Formatters installed (optional)
- [ ] Tested LSP hover (`K`)
- [ ] Tested file finding (`<C-p>`)
- [ ] Tested git features (`<leader>gs`)
- [ ] Tested terminal (`<C-\>`)
- [ ] Customized keybinds (optional)
- [ ] Disabled unused plugins (optional)

---

## 📊 Statistics

- **Total Plugins:** 30+
- **Configuration Files:** 34+ (plugins + docs)
- **Languages Supported:** 10+
- **Keybindings Documented:** 50+
- **Lines of Code:** 2000+
- **Documentation Pages:** 6

---

## 🎉 You're All Set!

Your Neovim configuration is modern, powerful, and production-ready.

### Next Steps:
1. **Explore:** Try different keybinds
2. **Customize:** Add your preferences
3. **Learn:** Read the [README](./README.md) for deep dives
4. **Enjoy:** Happy coding! 🚀

---

## 📞 Quick Reference

| Question | Answer |
|----------|--------|
| **Where do I put my config?** | `~/.config/nvim/` |
| **How do I add a plugin?** | Create file in `lua/plugins/` |
| **How do I customize keybinds?** | Edit `lua/vim-options.lua` |
| **How do I change the theme?** | Edit `lua/plugins/catppuccin.lua` |
| **How do I disable a plugin?** | Delete or comment its file |
| **How do I see all keybinds?** | Press `<Space>?` or read KEYMAPS.md |
| **How do I install servers?** | Run `:Mason` |
| **How do I format code?** | Press `<leader>fm` |
| **How do I use Copilot?** | Press `<C-g>` in Insert mode |
| **How do I view documentation?** | Press `K` on any symbol |

---

## 📜 Version Info

**Configuration Version:** 2.0 (Modernized)
**Last Updated:** January 2026
**Neovim Required:** 0.10+
**Status:** Production Ready ✅

---

**Made with ❤️ for modern Neovim development**

Happy coding! 🎯🚀
