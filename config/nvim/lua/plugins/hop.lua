return {
  "phaazon/hop.nvim",
  config = function()
    require("hop").setup({})
    vim.api.nvim_set_keymap("n", "<Leader><Leader>w", "<Cmd>HopWord<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<Leader><Leader>l", "<Cmd>HopLine<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<Leader><Leader>f", "<Cmd>HopChar1<CR>", { noremap = true, silent = true })
  end,
}
