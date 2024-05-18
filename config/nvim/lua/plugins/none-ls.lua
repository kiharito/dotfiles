return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("null-ls").setup()
    vim.keymap.set("n", "<leader>fm", function()
      vim.lsp.buf.format({
        timeout_ms = 200,
        async = true,
      })
    end, { desc = "Format" })
  end,
}
