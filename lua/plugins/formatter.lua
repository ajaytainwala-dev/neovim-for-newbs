return {
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    config = function()
      require("formatter").setup({
        logging = false,
        filetype = {
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
          javascript = {
            require("formatter.filetypes.javascript").prettier,
          },
          typescript = {
            require("formatter.filetypes.typescript").prettier,
          },
          json = {
            require("formatter.filetypes.json").prettier,
          },
          html = {
            require("formatter.filetypes.html").prettier,
          },
          css = {
            require("formatter.filetypes.css").prettier,
          },
          markdown = {
            require("formatter.filetypes.markdown").prettier,
          },
          python = {
            require("formatter.filetypes.python").black,
          },
        },
      })

      vim.keymap.set("n", "<leader>fm", ":Format<CR>", { noremap = true, silent = true })
      vim.keymap.set("v", "<leader>fm", ":Format<CR>", { noremap = true, silent = true })
    end,
  },
}
