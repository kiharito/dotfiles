return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bufdelete = { enabled = true },
    explorer = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true },
  },
  keys = {
    -- Top Pickers & Explorer
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    -- Bufdelete
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    { "<leader>bo", function() Snacks.bufdelete.other() end, desc = "Delete Other Buffers" },
    -- Lazygit
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
  },
}
