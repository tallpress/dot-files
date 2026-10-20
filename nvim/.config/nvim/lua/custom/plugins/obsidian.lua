return {
  'obsidian-nvim/obsidian.nvim',
  version = '*', -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    -- Let render-markdown.nvim handle rendering; obsidian's own UI clashes with it.
    ui = { enable = false },
    workspaces = {
      {
        name = 'notes',
        path = '~/notes',
      },
    },
  },
}
