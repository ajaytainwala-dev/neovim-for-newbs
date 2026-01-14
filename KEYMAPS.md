# 🎯 Neovim Keymaps Reference Guide

> **Leader Key:** `<Space>` | **Local Leader:** `\`

## 📑 Table of Contents
- [Window Navigation](#-window-navigation)
- [File Operations](#-file-operations)
- [Search & Find](#-search--find)
- [Git Operations](#-git-operations)
- [LSP & Code Intelligence](#-lsp--code-intelligence)
- [Code Completion](#-code-completion)
- [Editing & Text Manipulation](#-editing--text-manipulation)
- [Comments](#-comments)
- [Surround Operations](#-surround-operations)
- [Treesitter Text Objects](#-treesitter-text-objects)
- [Folding](#-folding)
- [Search & Replace](#-search--replace)
- [Debugging](#-debugging)
- [Terminal](#-terminal)
- [File Explorer](#-file-explorer)
- [Utility Commands](#-utility-commands)

---

## 🪟 Window Navigation
Navigate between splits and windows seamlessly.

| Key | Mode | Action |
|-----|------|--------|
| `<C-k>` | Normal | Move to window above |
| `<C-j>` | Normal | Move to window below |
| `<C-h>` | Normal | Move to window left |
| `<C-l>` | Normal | Move to window right |

---

## 📂 File Operations

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-n>` | Normal | Toggle Neo-tree | Open/close file explorer |
| `<leader>bf` | Normal | Buffer Float | Show buffers in floating window |
| `<leader>gt` | Normal | Git Tree | Show git status in Neo-tree |

---

## 🔍 Search & Find
Powered by Telescope for fuzzy finding.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-p>` | Normal | Find Files | Fuzzy find files in project |
| `<leader>ff` | Normal | Find Files | Same as `<C-p>` |
| `<leader>fg` | Normal | Live Grep | Search text across all files |
| `<leader>fw` | Normal | Grep Word | Search word under cursor |
| `<leader>fb` | Normal | Find Buffers | List and switch between open buffers |
| `<leader><leader>` | Normal | Old Files | Recently opened files |
| `<leader>fh` | Normal | Help Tags | Search Neovim help documentation |
| `<leader>S` | Normal | Spectre | Advanced find and replace UI |
| `<leader>sw` | Normal | Spectre Word | Find/replace word under cursor |
| `<leader>sp` | Normal | Spectre File | Find/replace in current file |
| `<leader>h` | Normal | Clear Highlight | Remove search highlighting |

---

## 🔀 Git Operations
Comprehensive git integration with multiple plugins.

### Fugitive (Classic Git Commands)
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>gs` | Normal | Git Status | Open fugitive status window |
| `<leader>gp` | Normal | Git Push | Push to remote |
| `<leader>gu` | Normal | Git Pull | Pull from remote |
| `<leader>gm` | Normal | Git Merge | Start merge |

### Diffview
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>gd` | Normal | Diff View | Open diff view for changes |
| `<leader>gc` | Normal | Close Diff | Close diff view |
| `<leader>gh` | Normal | File History | Show file's git history |

### Telescope Git
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>fgc` | Normal | Git Commits | Browse commit history |
| `<leader>fgs` | Normal | Git Status | Show git status in telescope |

### Neogit & Lazygit
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>go` | Normal | Neogit | Interactive git interface |
| `<leader>gg` | Normal | Lazygit | Toggle lazygit terminal |

### Gitsigns (Hunk Operations)
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]h` | Normal | Next Hunk | Jump to next git change |
| `[h` | Normal | Previous Hunk | Jump to previous git change |
| `<leader>hs` | Normal/Visual | Stage Hunk | Stage current/selected changes |
| `<leader>hr` | Normal/Visual | Reset Hunk | Discard current/selected changes |
| `<leader>hS` | Normal | Stage Buffer | Stage all changes in file |
| `<leader>hu` | Normal | Undo Stage | Undo last staged hunk |
| `<leader>hR` | Normal | Reset Buffer | Discard all changes in file |
| `<leader>hp` | Normal | Preview Hunk | Show hunk diff in popup |
| `<leader>hb` | Normal | Blame Line | Show git blame for line |
| `<leader>hd` | Normal | Diff This | Show diff against index |

---

## 🧠 LSP & Code Intelligence
Language Server Protocol features for code navigation and refactoring.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `K` | Normal | Hover Info | Show documentation for symbol under cursor |
| `<leader>gd` | Normal | Go to Definition | Jump to symbol definition |
| `<leader>gi` | Normal | Go to Implementation | Jump to symbol implementation |
| `<leader>gr` | Normal | Find References | List all references to symbol |
| `<leader>ca` | Normal | Code Action | Show available code actions |
| `<leader>rn` | Normal | Rename | Rename symbol across project |
| `<leader>f` | Normal/Visual | Format | Format code (async) |
| `<leader>fm` | Normal/Visual | Format (Conform) | Format using conform.nvim |

---

## 💡 Code Completion
Intelligent code completion with multiple sources.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-Space>` | Insert | Trigger Completion | Manually trigger completion menu |
| `<C-b>` | Insert | Scroll Docs Up | Scroll up in documentation window |
| `<C-f>` | Insert | Scroll Docs Down | Scroll down in documentation window |
| `<CR>` | Insert | Confirm | Accept selected completion |
| `<Tab>` | Insert | Next Item | Select next completion / Jump to next snippet placeholder |
| `<S-Tab>` | Insert | Previous Item | Select previous completion / Jump to previous snippet placeholder |
| `<C-g>` | Insert | Copilot Accept | Accept GitHub Copilot suggestion |

---

## ✏️ Editing & Text Manipulation

### Line Movement
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<A-j>` | Normal/Visual | Move Line Down | Move current/selected line(s) down |
| `<A-k>` | Normal/Visual | Move Line Up | Move current/selected line(s) up |

### Indentation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<` | Visual | Indent Left | Decrease indentation (repeatable) |
| `>` | Visual | Indent Right | Increase indentation (repeatable) |
| `<<` | Normal | Indent Line Left | Decrease indentation of current line |
| `>>` | Normal | Indent Line Right | Increase indentation of current line |

---

## 💬 Comments
Smart commenting with treesitter context awareness.

### Line Comments
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `gcc` | Normal | Toggle Line | Comment/uncomment current line |
| `gc` | Visual | Toggle Lines | Comment/uncomment selected lines |
| `gcO` | Normal | Comment Above | Add comment on line above |
| `gco` | Normal | Comment Below | Add comment on line below |
| `gcA` | Normal | Comment EOL | Add comment at end of line |

### Block Comments
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `gbc` | Normal | Toggle Block | Comment/uncomment block |
| `gb` | Visual | Toggle Block | Block comment selection |

### Operator Pending
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `gc{motion}` | Normal | Comment Motion | Comment with motion (e.g., `gcap` for paragraph) |
| `gb{motion}` | Normal | Block Comment Motion | Block comment with motion |

---

## 🔄 Surround Operations
Add, change, or delete surrounding characters (quotes, brackets, tags).

| Key | Mode | Action | Example |
|-----|------|--------|---------|
| `ys{motion}{char}` | Normal | Add Surround | `ysiw"` - surround word with quotes |
| `yss{char}` | Normal | Surround Line | `yss)` - surround entire line with () |
| `cs{old}{new}` | Normal | Change Surround | `cs"'` - change " to ' |
| `ds{char}` | Normal | Delete Surround | `ds"` - remove surrounding quotes |
| `S{char}` | Visual | Surround Selection | Select text, `S"` to wrap in quotes |

**Common Surround Characters:**
- `"` or `'` - quotes
- `)` or `(` - parentheses (with/without space)
- `}` or `{` - braces
- `]` or `[` - brackets
- `t` - HTML/XML tags (prompts for tag name)

---

## 🌳 Treesitter Text Objects
Navigate and select code structures intelligently.

### Selection
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `af` | Visual/Operator | Function (outer) | Select entire function including signature |
| `if` | Visual/Operator | Function (inner) | Select function body only |
| `ac` | Visual/Operator | Class (outer) | Select entire class/struct |
| `ic` | Visual/Operator | Class (inner) | Select class body only |

**Usage Examples:**
- `vaf` - visually select entire function
- `dif` - delete function body
- `yac` - yank entire class

### Navigation
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `]f` | Normal | Next Function | Jump to start of next function |
| `[f` | Normal | Previous Function | Jump to start of previous function |
| `]c` | Normal | Next Class | Jump to start of next class |
| `[c` | Normal | Previous Class | Jump to start of previous class |

### Incremental Selection
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-Space>` | Normal | Init Selection | Start incremental selection at node |
| `<C-Space>` | Visual | Expand Selection | Expand selection to parent node |
| `<C-s>` | Visual | Expand Scope | Expand to enclosing scope |
| `<C-BS>` | Visual | Shrink Selection | Shrink selection to previous node |

---

## 📋 Folding
Code folding powered by nvim-ufo.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `zR` | Normal | Open All | Open all folds in buffer |
| `zM` | Normal | Close All | Close all folds in buffer |
| `zr` | Normal | Open More | Open folds one level |
| `zm` | Normal | Close More | Close folds one level |
| `zo` | Normal | Open Fold | Open fold at cursor |
| `zc` | Normal | Close Fold | Close fold at cursor |
| `za` | Normal | Toggle Fold | Toggle fold at cursor |

---

## 🔁 Search & Replace
Powerful search and replace with Spectre.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>S` | Normal | Spectre Toggle | Open Spectre panel for project-wide find/replace |
| `<leader>sw` | Normal | Search Word | Search and replace word under cursor |
| `<leader>sp` | Normal | Search in File | Find/replace in current file only |

**Spectre Panel Controls:**
- `<CR>` - Replace current item
- `<leader>rc` - Replace all instances
- `dd` - Delete entry from results
- `?` - Show help

---

## 🐛 Debugging
Debug Adapter Protocol (DAP) integration.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>db` | Normal | Toggle Breakpoint | Add/remove breakpoint at line |
| `<leader>dc` | Normal | Continue | Start/continue debugging |
| `<leader>dn` | Normal | Step Over | Execute current line, skip into functions |
| `<leader>di` | Normal | Step Into | Step into function call |
| `<leader>do` | Normal | Step Out | Step out of current function |
| `<leader>dr` | Normal | REPL | Open debug REPL |

---

## 💻 Terminal
Integrated terminal with toggleterm.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-\>` | Normal/Terminal | Toggle Terminal | Open/close floating terminal |
| `<leader>gg` | Normal | Lazygit | Toggle lazygit in terminal |
| `<Esc>` | Terminal | Exit Terminal Mode | Return to normal mode in terminal |

---

## 📁 File Explorer
Neo-tree file navigation.

| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<C-n>` | Normal | Toggle Explorer | Open/close Neo-tree file explorer |
| `<leader>bf` | Normal | Buffer Explorer | Float window with buffer list |
| `<leader>gt` | Normal | Git Status Tree | Show git changes in tree view |

**Neo-tree Navigation:**
- `<CR>` - Open file/folder
- `a` - Create file/folder
- `d` - Delete
- `r` - Rename
- `y` - Copy
- `x` - Cut
- `p` - Paste
- `?` - Show help

---

## 🛠️ Utility Commands

### Testing (vim-test)
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>tn` | Normal | Test Nearest | Run test nearest to cursor |
| `<leader>tf` | Normal | Test File | Run all tests in current file |
| `<leader>ts` | Normal | Test Suite | Run entire test suite |
| `<leader>tl` | Normal | Test Last | Re-run last test |
| `<leader>tv` | Normal | Test Visit | Visit last test file |

### Other Tools
| Key | Mode | Action | Description |
|-----|------|--------|-------------|
| `<leader>ut` | Normal | Undo Tree | Toggle undo history visualizer |
| `<leader>h` | Normal | Clear Highlight | Remove search highlighting |

---

## 🎨 Tips & Tricks

### Combining Keys
Many keys work as operators and can be combined:
- `daf` - delete a function
- `yic` - yank inner class
- `vif` - select inner function
- `gcap` - comment a paragraph

### Leader Key Mnemonic
The leader key mappings follow patterns:
- `<leader>f*` - **F**ind operations (Telescope)
- `<leader>g*` - **G**it operations
- `<leader>h*` - Git **H**unks (Gitsigns)
- `<leader>d*` - **D**ebugger operations
- `<leader>t*` - **T**est operations

### Quick Reference Card
Print or keep this guide handy! Use `<leader>fh` to search help tags for more information.

---

**Last Updated:** January 2026
**Neovim Version:** 0.11+
