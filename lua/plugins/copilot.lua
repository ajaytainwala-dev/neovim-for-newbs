return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', {
        expr = true,
        noremap = true,
        silent = true,
      })
    end,
  },
}
