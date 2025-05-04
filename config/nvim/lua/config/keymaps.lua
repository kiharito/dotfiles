-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
if vim.g.vscode then
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true }

  map("n", "<leader>e", function()
    vim.fn.VSCodeNotify("workbench.view.explorer")
  end, opts)
end
