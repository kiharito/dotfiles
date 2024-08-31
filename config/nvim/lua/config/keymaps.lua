-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 同じディレクトリにあるxx.extとtest_xx.extを行き来する
vim.api.nvim_create_user_command("ToggleTestFile", function()
  local file_name = vim.fn.expand("%:t")
  local target_file_name
  if string.match(file_name, "^test_") ~= nil then
    target_file_name = string.gsub(file_name, "^test_", "")
  else
    target_file_name = "test_" .. file_name
  end
  local dir_path = vim.fn.expand("%:h")
  local path = dir_path .. "/" .. target_file_name

  local file_exists = (vim.fn.filereadable(path) == 1 and true or false)
  if file_exists then
    vim.api.nvim_command(":e " .. path)
  else
    vim.api.nvim_echo({ { "Test file does not exist" } }, false, {})
  end
end, {})
vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTestFile<CR>", { noremap = true, silent = true })
