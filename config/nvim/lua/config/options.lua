-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_user_command("E", "echo $APP_ENV", {})
vim.api.nvim_create_user_command("Eu", "let $APP_ENV='unit-test'", {})
vim.api.nvim_create_user_command("Ei", "let $APP_ENV='integration-test'", {})
vim.api.nvim_create_user_command("El", "let $APP_ENV='local'", {})
