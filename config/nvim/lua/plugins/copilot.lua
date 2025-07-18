return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = false, -- handled by nvim-cmp / blink.cmp
    },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      help = true,
    },
    keymap = {
      accept = false, -- handled by nvim-cmp / blink.cmp
    },
  },
}
