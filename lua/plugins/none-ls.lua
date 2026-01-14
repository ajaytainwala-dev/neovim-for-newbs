return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          -- Formatting
          null_ls.builtins.formatting.prettier.with({
            filetypes = { "javascript", "typescript", "json", "yaml", "html", "css", "markdown" },
            condition = function()
              return vim.fn.executable("prettier") > 0
            end,
          }),
          null_ls.builtins.formatting.stylua.with({
            extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
            condition = function()
              return vim.fn.executable("stylua") > 0
            end,
          }),
          null_ls.builtins.formatting.black.with({
            extra_args = { "--line-length", "100" },
            condition = function()
              return vim.fn.executable("black") > 0
            end,
          }),
          null_ls.builtins.formatting.isort.with({
            condition = function()
              return vim.fn.executable("isort") > 0
            end,
          }),

          -- Diagnostics/Linting (only if installed)
          null_ls.builtins.diagnostics.pylint.with({
            condition = function(utils)
              return vim.fn.executable("pylint") > 0
                and utils.root_has_file({ ".pylintrc", "pyproject.toml" })
            end,
          }),

          -- Code Actions
          null_ls.builtins.code_actions.gitsigns,
        },
      })
    end,
  },
}

