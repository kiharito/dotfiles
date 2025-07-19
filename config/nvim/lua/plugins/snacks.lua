return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bufdelete = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    lazygit = { enabled = true },
    picker = {
      enabled = true,
      actions = {
        yank_inspect = {
          action = function(_, item)
            if not item then
              return
            end
            local inspect_str = vim.inspect(item)
            vim.fn.setreg("+", inspect_str)
          end,
        },
      },
      win = {
        input = {
          keys = {
            ["<c-i>"] = { "inspect", mode = { "n", "i" } },
            ["<c-y>"] = { "yank_inspect", mode = { "n", "i" } },
          },
        },
      },
    },
  },
  keys = {
    -- Top Pickers & Explorer
    {
      "<leader><space>",
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart Find Files",
    },
    {
      "<leader>,",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>/",
      function()
        Snacks.picker.grep({ hidden = true })
      end,
      desc = "Grep",
    },
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "File Explorer",
    },
    {
      "<leader>sw",
      function()
        Snacks.picker.grep_word({ hidden = true })
      end,
      desc = "Grep Word",
      mode = { "n", "x" },
    },
    -- Bufdelete
    {
      "<leader>bd",
      function()
        Snacks.bufdelete()
      end,
      desc = "Delete Buffer",
    },
    {
      "<leader>bo",
      function()
        Snacks.bufdelete.other()
      end,
      desc = "Delete Other Buffers",
    },
    -- Diagnostics
    {
      "<leader>sd",
      function()
        Snacks.picker.diagnostics_buffer()
      end,
      desc = "Buffer Diagnostics",
    },
    {
      "<leader>sD",
      function()
        Snacks.picker.diagnostics()
      end,
      desc = "Diagnostics",
    },
    -- Lazygit
    {
      "<leader>gg",
      function()
        Snacks.lazygit()
      end,
      desc = "Lazygit",
    },
    -- LSP
    {
      "<leader>cl",
      function()
        Snacks.picker.lsp_config()
      end,
      desc = "LSP Info",
    },
    {
      "gd",
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = "Goto Definition",
    },
    {
      "gr",
      function()
        Snacks.picker.lsp_references()
      end,
      nowait = true,
      desc = "References",
    },
    {
      "<leader>ss",
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = "LSP Symbols",
    },
  },
}
