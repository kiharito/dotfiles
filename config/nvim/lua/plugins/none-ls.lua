return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
      },
    })

    vim.keymap.set("n", "<leader>fm", function()
      vim.lsp.buf.format({
        timeout_ms = 200,
        async = true,
      })
    end, { desc = "Format" })
  end,
}
