return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/noice.nvim" },
  opts = {
    options = {
      theme = "tokyonight",
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { "filename" },
      lualine_x = {
        {
          require("noice").api.status.command.get,
          cond = require("noice").api.status.command.has,
        },
        {
          require("noice").api.status.search.get,
          cond = require("noice").api.status.search.has,
        },
      },
      lualine_y = { "encoding", "filetype" },
      lualine_z = { "progress", "location" },
    },
  },
}
