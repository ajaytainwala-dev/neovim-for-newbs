return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
        },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "html",
        "cssls",
        "pyright",
        "jsonls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      vim.lsp.config.lua_ls = {
        cmd = { "lua-language-server" },
        root_dir = vim.fs.root(0, { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" }),
        filetypes = { "lua" },
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      }

      -- TypeScript
      vim.lsp.config.ts_ls = {
        cmd = { "typescript-language-server", "--stdio" },
        root_dir = vim.fs.root(0, { "package.json", "tsconfig.json", "jsconfig.json", ".git" }),
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        capabilities = capabilities,
      }

      -- HTML
      vim.lsp.config.html = {
        cmd = { "vscode-html-language-server", "--stdio" },
        root_dir = vim.fs.root(0, { "package.json", ".git" }),
        filetypes = { "html" },
        capabilities = capabilities,
      }

      -- CSS
      vim.lsp.config.cssls = {
        cmd = { "vscode-css-language-server", "--stdio" },
        root_dir = vim.fs.root(0, { "package.json", ".git" }),
        filetypes = { "css", "scss", "less" },
        capabilities = capabilities,
      }

      -- Python
      vim.lsp.config.pyright = {
        cmd = { "pyright-langserver", "--stdio" },
        root_dir = vim.fs.root(0, { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" }),
        filetypes = { "python" },
        capabilities = capabilities,
      }

      -- JSON
      vim.lsp.config.jsonls = {
        cmd = { "vscode-json-language-server", "--stdio" },
        root_dir = vim.fs.root(0, { "package.json", ".git" }),
        filetypes = { "json", "jsonc" },
        capabilities = capabilities,
      }

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
      end, { noremap = true, silent = true })
    end,
  },
}
