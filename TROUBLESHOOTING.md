#!/usr/bin/env nvim -u NONE
"  DIAGNOSTICS & TROUBLESHOOTING GUIDE

" ============================================================================
" QUICK DIAGNOSTICS
" ============================================================================

" Run in Neovim:
" :checkhealth          - Full health check
" :checkhealth nvim     - Neovim specific
" :Lazy                 - Plugin manager status
" :Lazy log             - View plugin logs
" :LspInfo              - LSP status
" :Mason                - Language server browser
" :verbose map <key>    - Check what's mapped to a key
" :version              - Neovim version info

" ============================================================================
" COMMON ISSUES & SOLUTIONS
" ============================================================================

" ISSUE: Plugins not loading
" SOLUTIONS:
"   1. Run :Lazy sync
"   2. Run :Lazy update
"   3. Delete ~/.local/share/nvim/lazy and restart
"   4. Check :Lazy log for errors
"   5. Verify disk space available

" ISSUE: Slow startup time
" SOLUTIONS:
"   1. Run :Lazy profile
"   2. Check which plugins load on startup (lazy = false)
"   3. Set event = "VeryLazy" for less critical plugins
"   4. Check :TSUpdate status
"   5. Disable unused plugins

" ISSUE: LSP not working
" SOLUTIONS:
"   1. Run :LspInfo
"   2. Open a file matching your language
"   3. Run :Mason and install the server
"   4. Check if server binary is in PATH
"   5. Run :Lazy update to get latest lspconfig
"   6. Try :LspStart <server_name>

" ISSUE: Completions not appearing
" SOLUTIONS:
"   1. Check :checkhealth nvim.lsp
"   2. Verify LSP is attached (:LspInfo)
"   3. Trigger with <C-Space>
"   4. Check if snippets loaded (:Lazy nvim-cmp)
"   5. Verify nvim_cmp sources in completions.lua

" ISSUE: Treesitter highlighting not working
" SOLUTIONS:
"   1. Run :TSUpdate
"   2. Check language is supported: :checkts
"   3. Force reinstall: :TSUninstall <language> then :TSInstall
"   4. Check :Lazy treesitter loaded
"   5. Verify colorscheme loaded: :colorscheme

" ISSUE: Keybinds not working
" SOLUTIONS:
"   1. Check what's mapped: :verbose map <key>
"   2. Check for conflicts with system/tmux
"   3. Verify in Normal/Insert/Visual mode (n/i/v)
"   4. Check which-key with <Space>?
"   5. Reload config: :source $MYVIMRC

" ISSUE: Git features not working
" SOLUTIONS:
"   1. Ensure git is installed: which git
"   2. Check gitsigns: :Lazy gitsigns
"   3. Verify repo is git initialized: git status
"   4. Check Lazygit installed (for toggleterm): which lazygit
"   5. Run :diffview<CR> or :Neogit directly

" ISSUE: Copilot not suggesting
" SOLUTIONS:
"   1. Install copilot.vim (:Mason)
"   2. Check authentication: :Copilot setup
"   3. Verify auth token: ~/.config/github-copilot/hosts.json
"   4. Restart Neovim
"   5. Try in Insert mode with <C-g>

" ISSUE: Formatting not working
" SOLUTIONS:
"   1. Check formatters installed: :Mason
"   2. Verify format-on-save in conform.lua
"   3. Run :Format manually
"   4. Check file type has formatter
"   5. Look for errors: :Lazy log | /conform

" ISSUE: Terminal (toggleterm) not working
" SOLUTIONS:
"   1. Check shell: echo $SHELL (macOS/Linux) or echo %SHELL% (Windows)
"   2. Try <C-\> to toggle
"   3. Install lazygit: brew install lazygit (macOS) or choco install lazygit (Windows)
"   4. Check :Lazy toggleterm loaded
"   5. Check for shell-specific issues: :terminal

" ============================================================================
" PERFORMANCE CHECKS
" ============================================================================

" Measure startup time:
" nvim --startuptime /tmp/startup.log -c quit
" cat /tmp/startup.log | tail -20

" Profile plugins:
" :Lazy profile

" ============================================================================
" NEOVIM VERSION CHECKS
" ============================================================================

" Check version:
" :version or nvim --version

" Minimum required: 0.10.0
" For full feature support: 0.11+

" ============================================================================
" DEPENDENCY CHECKS
" ============================================================================

" JavaScript/TypeScript development:
" which node
" node --version
" npm list -g typescript prettier eslint

" Python development:
" which python3
" python3 --version
" pip3 list | grep -E 'pyright|black|isort'

" Git features:
" which git
" git --version

" Terminal features:
" which lazygit (for git UI)
" which rg (for faster grep)

" ============================================================================
" RESET / NUCLEAR OPTIONS
" ============================================================================

" Soft reset (plugins only):
" rm -rf ~/.local/share/nvim/lazy/
" nvim  # Plugins reinstall on startup

" Full reset (includes cache):
" rm -rf ~/.local/share/nvim/
" rm -rf ~/.cache/nvim/
" nvim

" Reset one plugin:
" :Lazy delete <plugin-name>
" :Lazy install <plugin-name>

" ============================================================================
" USEFUL DEBUGGING COMMANDS
" ============================================================================

" View config loading time: :Lazy profile
" View LSP attach events: :verbose LspAttach
" View key mappings: :map (normal), :imap (insert), :vmap (visual)
" View abbreviations: :abbrev
" View all settings: :set all
" View highlight groups: :highlight or :Telescope highlights
" Check Lua syntax: :checkluasyntax %

" ============================================================================
" FILES TO CHECK
" ============================================================================

" If config won't load, check these first:
" - init.lua (main file - check for syntax errors)
" - lua/vim-options.lua (settings - check for typos)
" - lua/plugins/ (all plugin specs)
"
" Check with: nvim -u /path/to/file -c "checkluasyntax %"

" ============================================================================
" GETTING HELP
" ============================================================================

" In-editor help:
" :help nvim
" :help lsp
" :help treesitter
" :help lazy.nvim
" :help <plugin-name>

" Online resources:
" - GitHub: https://github.com/neovim/neovim/discussions
" - Subreddit: https://reddit.com/r/neovim
" - Discord: https://discord.gg/neovim
" - Issues: Check individual plugin GitHub repos

" ============================================================================
" ERROR LOG INSPECTION
" ============================================================================

" View Neovim logs:
" :Lazy log

" System logs (macOS):
" log stream --predicate 'process == "nvim"'

" System logs (Linux):
" journalctl -u <neovim-service> -f

" View plugin-specific logs:
" $HOME/.local/state/nvim/lsp.log (LSP)

" ============================================================================

" Remember: When in doubt, try:
" 1. :Lazy sync
" 2. :checkhealth
" 3. :Lazy log
" 4. Restart Neovim
" 5. Check GitHub issues for your plugins
