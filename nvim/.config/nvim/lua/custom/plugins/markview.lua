return {
  'OXY2DEV/markview.nvim',
  ft = { 'markdown' },
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- Keep the buffer as raw source; only render in the splitview window.
    preview = {
      enable = false,
    },
  },
  keys = {
    { '<leader>m', '<cmd>Markview splitToggle<cr>', desc = 'Markdown split preview' },
  },
  config = function(_, opts)
    require('markview').setup(opts)

    -- markview derives the code background from `Normal`'s bg, but our Normal bg
    -- is NONE (transparent), so it falls back to a hardcoded blue (#1E1E2E).
    -- Force a gruvbox-gray instead. Re-applied on ColorScheme because markview
    -- regenerates its own highlights on that event (see markview autocmds).
    local function fix_code_hl()
      local bg = '#3c3836'
      vim.api.nvim_set_hl(0, 'MarkviewCode', { bg = bg })
      vim.api.nvim_set_hl(0, 'MarkviewInlineCode', { bg = bg })
      vim.api.nvim_set_hl(0, 'MarkviewCodeInfo', { bg = bg })
      vim.api.nvim_set_hl(0, 'MarkviewCodeFg', { fg = bg })
    end

    fix_code_hl()
    vim.api.nvim_create_autocmd('ColorScheme', { callback = fix_code_hl })
  end,
}
