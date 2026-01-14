# 📋 File Structure Reference

## Root Configuration Files

### `init.lua`
**Purpose:** Bootstrap Neovim and load plugins
**Key Changes:**
- Fixed deprecated `vim.loop` → `vim.uv`
- Added `ui` options for prettier Lazy UI
- Loads core config and plugins system

**When to edit:** Rarely. Only for global initialization logic.

---

### `lua/vim-options.lua`
**Purpose:** Core Neovim settings and keybinds
**Contains:**
- Indentation (tabs, spaces)
- Display options (numbers, signs, wrapping)
- Search settings
- Leader keys
- Window navigation (Ctrl+hjkl)
- Line moving (Alt+jk)
- Formatting keybind

**When to edit:** Often. Customize keybinds, add new shortcuts here.

---

## Plugin Configuration Directory: `lua/plugins/`

### Essential LSP & Completion

#### `lsp-config.lua`
**Handles:** Language servers
**Servers Configured:** Lua, TypeScript, HTML, CSS, Python, JSON, Bash, Go, Rust
**Keybinds:**
- `K` - Hover
- `<leader>gd` - Go to definition
- `<leader>gi` - Go to implementation
- `<leader>gr` - Find references
- `<leader>ca` - Code action
- `<leader>rn` - Rename
- `<leader>f` - Format

**When to edit:** Add new language servers, customize LSP options.

#### `completions.lua`
**Handles:** Code completion engine (nvim-cmp)
**Sources:** LSP, LuaSnip, Buffer, Path
**Features:** Tab/Shift-Tab for navigation, documentation preview

**When to edit:** Add completion sources, customize snippets.

---

### Search & Navigation

#### `telescope.lua`
**Handles:** Fuzzy finder for files, text, git
**Keybinds:**
- `<C-p>` / `<leader>ff` - Find files
- `<leader>fg` - Live grep (search text)
- `<leader>fw` - Grep word under cursor
- `<leader>fb` - Find buffers
- `<leader>fgc` - Git commits
- `<leader>fgs` - Git status

**When to edit:** Add more search mappings, customize appearance.

---

### Syntax & UI

#### `treesitter.lua`
**Handles:** Syntax highlighting, indentation, text objects
**Features:**
- Auto-install syntax parsers
- Incremental selection with `<C-space>`
- Text objects: `af`, `if`, `ac`, `ic`
- Jump between functions/classes

**When to edit:** Add languages, customize text objects.

#### `catppuccin.lua`
**Handles:** Color scheme (Catppuccin Mocha)
**Customizable:** Theme flavor (latte/frappe/macchiato/mocha)

**When to edit:** Change theme or colors.

---

### File & Buffer Management

#### `neo-tree.lua`
**Handles:** File tree explorer
**Keybinds:**
- `<C-n>` - Toggle file tree
- `<leader>bf` - Buffers (float)
- `<leader>gt` - Git status tree

**Features:**
- Git status indicators
- Diagnostics in tree
- Customizable icons
- File operations (create, rename, delete)

**When to edit:** Customize tree appearance, add keybinds.

#### `oil.lua`
**Handles:** Alternative file browser (edit directory like buffer)
**Alternative** to neo-tree for minimal setup.

---

### Git Integration

#### `gitsigns.lua`
**Handles:** Git signs in line numbers, hunk preview
**Keybinds:**
- `]h` / `[h` - Next/prev hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>hd` - Diff this

**When to edit:** Customize git symbols, change keybinds.

#### `fugitive.lua`
**Handles:** Git commands (`:Git`)
**Keybinds:**
- `<leader>gs` - Git status
- `<leader>gp` - Git push
- `<leader>gu` - Git pull

**When to edit:** Add more git commands.

#### `diffview.lua`
**Handles:** Better diff viewing
**Keybinds:**
- `<leader>gd` - Diffview
- `<leader>gc` - Close diff
- `<leader>gh` - File history

#### `neogit.lua`
**Handles:** Interactive git UI
**Keybind:** `<leader>go` - Open Neogit

#### `toggleterm.lua`
**Handles:** Terminal integration (Lazygit)
**Keybind:** `<leader>gg` - Lazygit toggle, `<C-\>` - Terminal

---

### Code Editing

#### `comment.lua`
**Handles:** Fast commenting
**Keybinds:**
- `gcc` - Toggle line comment
- `gbc` - Toggle block comment

#### `autopairs.lua`
**Handles:** Auto-closing brackets `()[]{}''"`
**Auto-integrates** with completion

#### `surround.lua`
**Handles:** Surround operations
**Examples:**
- `cs'"` - Change single quote to double
- `ds'` - Delete surrounding quotes
- `ys3w'` - Surround 3 words with quotes

#### `indent-blankline.lua`
**Handles:** Visual indentation guides

---

### Formatting & Linting

#### `conform.lua`
**Handles:** Code formatting (prettier, black, stylua)
**Keybind:** `<leader>fm` - Format
**Formatters:** JavaScript, Python, Lua, JSON, CSS, HTML, Markdown

#### `none-ls.lua`
**Handles:** Linting & diagnostics
**Linters:** ESLint, Pylint, Yamllint, ShellCheck
**Also:** Code actions (eslint)

---

### Search & Replace

#### `spectre.lua`
**Handles:** Advanced find & replace
**Keybind:** `<leader>S` - Open Spectre

---

### UI Enhancements

#### `lualine.lua`
**Handles:** Status line (bottom bar)
**Shows:** Mode, branch, diff, diagnostics, filename, encoding

#### `which-key.lua`
**Handles:** Keymap hints when you start pressing
**Displays:** Available keybinds after leader key

#### `todo-comments.lua`
**Handles:** Highlight TODO, FIXME, HACK, NOTE comments
**Icons** and color coding

#### `mini.lua`
**Handles:** Mini plugins (AI objects, statusline, pairs)

---

### Advanced Tools

#### `nvim-dap.lua`
**Handles:** Debugging (breakpoints, step execution)
**Keybinds:**
- `<leader>db` - Toggle breakpoint
- `<leader>dc` - Continue
- `<leader>dn` - Step over
- `<leader>di` - Step into
- `<leader>dr` - REPL open

#### `copilot.lua`
**Handles:** GitHub Copilot AI
**Keybind:** `<C-g>` (Insert mode) - Accept suggestion

#### `undotree.lua`
**Handles:** Visual undo tree
**Keybind:** `<leader>ut` - Toggle

#### `nvim-ufo.lua`
**Handles:** Smart code folding
**Keybinds:** `zR`, `zM`, `zr`, `zm`

---

### Optional/Legacy Plugins

#### `alpha.lua`
**Handles:** Start screen dashboard

#### `vim-test.lua`
**Handles:** Test running
**Keybinds:**
- `<leader>tn` - Test nearest
- `<leader>tf` - Test file
- `<leader>ts` - Test suite

#### `nvim-tmux-navigation.lua`
**Handles:** Tmux integration (disabled if not using tmux)
**Only active** when in tmux session

#### `swagger-preview.lua`
**Handles:** OpenAPI/Swagger preview (minimal)

#### `formatter.lua`
**Handles:** Alternative formatter (kept for compatibility)

#### `git-stuff.lua`
**Minimal configuration** - can be customized

---

## Documentation Files

### `README.md`
Full guide with installation, setup, and plugin documentation.

### `KEYMAPS.md`
Complete reference of all keybindings organized by category.

### `UPDATES.md`
Summary of what was changed from original config.

### `setup.sh` / `setup.bat`
Platform-specific setup scripts to verify dependencies.

---

## When to Edit What

### 🔧 **Customizing Keybinds**
Edit `lua/vim-options.lua` for global keybinds
Edit individual plugin files for plugin-specific keybinds

### 🌈 **Changing Theme**
Edit `lua/plugins/catppuccin.lua` - change `flavour` option

### 🌍 **Adding Language Support**
1. Edit `lua/plugins/lsp-config.lua` - add server config
2. Run `:Mason` to install the server

### 🔗 **Adding New Plugins**
Create new file in `lua/plugins/yourplugin.lua`
Return plugin spec from lazy.nvim

### ⚙️ **Performance Tuning**
Edit `lua/plugins/*` - adjust `event` and `lazy` options

---

## File Dependency Map

```
init.lua
├── vim-options.lua
├── lazy.nvim bootstrap
└── plugins/
    ├── lsp-config.lua (needs: completions)
    ├── completions.lua (needs: lsp-config)
    ├── telescope.lua
    ├── treesitter.lua (integrates with: catppuccin, lualine)
    ├── catppuccin.lua (theme for all plugins)
    ├── neo-tree.lua
    ├── gitsigns.lua (integrates with: catppuccin, lualine)
    ├── fugitive.lua
    ├── diffview.lua
    ├── neogit.lua
    ├── toggleterm.lua (integrates with: lualine)
    ├── comment.lua
    ├── autopairs.lua (integrates with: completions)
    ├── surround.lua
    ├── indent-blankline.lua
    ├── lualine.lua (integrates with: gitsigns, treesitter)
    ├── conform.lua
    ├── none-ls.lua
    ├── spectre.lua
    ├── nvim-dap.lua
    ├── copilot.lua
    └── ... (others are independent)
```

---

## 💡 Tips

1. **Modular Design:** Each plugin is independent; disable unwanted ones by commenting in that file
2. **Lazy Loading:** Plugins load on-demand; first launch takes longer but subsequent launches are fast
3. **Easy Debugging:** Use `:Lazy` command to manage plugins, `:checkhealth` to diagnose issues
4. **Safe Editing:** Backup original files before major changes
5. **Documentation:** Run `:help <plugin-name>` to read official plugin docs

---

Last Updated: January 2026
Neovim Version Required: 0.10+
