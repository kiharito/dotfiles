return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup()
    vim.keymap.set("n", "<leader>ex", vim.cmd.NvimTreeFocus, { desc = "NvimTree focus" })
  end,
}
