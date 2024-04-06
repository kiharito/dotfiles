return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
  },
  config = function()
    -- gitのdiffやブランチについてはgitsigns経由で情報を取得する(lualineでは情報を取得しない)
    local function diff_source()
      local gitsigns = vim.b.gitsigns_status_dict
      if gitsigns then
        return {
          added = gitsigns.added,
          modified = gitsigns.changed,
          removed = gitsigns.removed
        }
      end
    end

    require('lualine').setup {
      options = {
	globalstatus = true,
      },
      sections = {
	lualine_b = {
          { 'b:gitsigns_head' },
          { 'diff', source = diff_source },
          { 'diagnostics' },
        }
      }
    }
    vim.api.nvim_set_option('showmode', false)
  end
}
