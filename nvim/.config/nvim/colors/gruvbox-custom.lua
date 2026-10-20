-- gruvbox-custom.lua
-- Custom gruvbox theme based on Alacritty colors

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.g.colors_name = 'gruvbox-custom'

local colors = {
  bg = '#282828',
  bg_hard = '#1d2021',
  bg_soft = '#32302f',
  fg = '#ebdbb2',

  black = '#282828',
  red = '#cc241d',
  green = '#98971a',
  yellow = '#d79921',
  blue = '#458588',
  magenta = '#b16286',
  cyan = '#689d6a',
  white = '#a89984',

  bright_black = '#928374',
  bright_red = '#fb4934',
  bright_green = '#b8bb26',
  bright_yellow = '#fabd2f',
  bright_blue = '#83a598',
  bright_magenta = '#d3869b',
  bright_cyan = '#8ec07c',
  bright_white = '#ebdbb2',

  -- Extra gruvbox colors
  orange = '#d65d0e',
  bright_orange = '#fe8019',
  soft_red = '#ff5f5f', -- muted coral: the 256-downsampled look of bright_red, rendered accurately in truecolor
  bg1 = '#3c3836',
  bg2 = '#504945',
  bg3 = '#665c54',
  bg4 = '#7c6f64',
}

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi('Normal', { fg = colors.fg, bg = colors.bg })
hi('NormalFloat', { fg = colors.fg, bg = colors.bg1 })
hi('FloatBorder', { fg = colors.bright_black, bg = colors.bg1 })
hi('Cursor', { fg = colors.bg, bg = colors.fg })
hi('CursorLine', { bg = colors.bg1 })
hi('CursorColumn', { bg = colors.bg1 })
hi('ColorColumn', { bg = colors.bg1 })
hi('LineNr', { fg = colors.bg4 })
hi('CursorLineNr', { fg = colors.bright_yellow, bold = true })
hi('SignColumn', { bg = colors.bg })
hi('VertSplit', { fg = colors.bg3, bg = colors.bg })
hi('WinSeparator', { fg = colors.bg3, bg = colors.bg })
hi('StatusLine', { fg = colors.fg, bg = colors.bg2 })
hi('StatusLineNC', { fg = colors.bright_black, bg = colors.bg1 })
hi('TabLine', { fg = colors.bright_black, bg = colors.bg1 })
hi('TabLineFill', { bg = colors.bg })
hi('TabLineSel', { fg = colors.bright_green, bg = colors.bg })
hi('Pmenu', { fg = colors.fg, bg = colors.bg1 })
hi('PmenuSel', { fg = colors.bg, bg = colors.bright_blue })
hi('PmenuSbar', { bg = colors.bg2 })
hi('PmenuThumb', { bg = colors.bg4 })
hi('WildMenu', { fg = colors.bg, bg = colors.bright_yellow })
hi('Folded', { fg = colors.bright_black, bg = colors.bg1 })
hi('FoldColumn', { fg = colors.bright_black, bg = colors.bg })
hi('MatchParen', { fg = colors.bright_yellow, bold = true, underline = true })
hi('Visual', { bg = colors.bg3 })
hi('VisualNOS', { bg = colors.bg3 })
hi('Search', { fg = colors.bg, bg = colors.bright_yellow })
hi('IncSearch', { fg = colors.bg, bg = colors.bright_orange })
hi('QuickFixLine', { bg = colors.bg2 })
hi('NonText', { fg = colors.bg2 })
hi('SpecialKey', { fg = colors.bg2 })
hi('Whitespace', { fg = colors.bg2 })
hi('EndOfBuffer', { fg = colors.bg })
hi('Directory', { fg = colors.bright_blue })
hi('Title', { fg = colors.bright_green, bold = true })
hi('ErrorMsg', { fg = colors.bright_red, bg = colors.bg })
hi('WarningMsg', { fg = colors.bright_orange, bg = colors.bg })
hi('ModeMsg', { fg = colors.bright_yellow, bold = true })
hi('MoreMsg', { fg = colors.bright_green })
hi('Question', { fg = colors.bright_orange })

-- Diff
hi('DiffAdd', { fg = colors.bright_green, bg = colors.bg1 })
hi('DiffChange', { fg = colors.bright_cyan, bg = colors.bg1 })
hi('DiffDelete', { fg = colors.bright_red, bg = colors.bg1 })
hi('DiffText', { fg = colors.bright_yellow, bg = colors.bg2 })

-- Syntax
hi('Comment', { fg = colors.bright_black, italic = true })
hi('Constant', { fg = colors.bright_yellow })
hi('String', { fg = colors.bright_green })
hi('Character', { fg = colors.bright_green })
hi('Number', { fg = colors.bright_magenta })
hi('Boolean', { fg = colors.bright_magenta })
hi('Float', { fg = colors.bright_magenta })
hi('Identifier', { fg = colors.bright_blue })
hi('Function', { fg = colors.fg })
hi('Statement', { fg = colors.soft_red })
hi('Conditional', { fg = colors.soft_red })
hi('Repeat', { fg = colors.soft_red })
hi('Label', { fg = colors.soft_red })
hi('Operator', { fg = colors.fg })
hi('Keyword', { fg = colors.soft_red })
hi('Exception', { fg = colors.soft_red })
hi('PreProc', { fg = colors.bright_cyan })
hi('Include', { fg = colors.bright_cyan })
hi('Define', { fg = colors.bright_cyan })
hi('Macro', { fg = colors.bright_cyan })
hi('PreCondit', { fg = colors.bright_cyan })
hi('Type', { fg = colors.fg })
hi('StorageClass', { fg = colors.bright_orange })
hi('Structure', { fg = colors.bright_cyan })
hi('Typedef', { fg = colors.fg })
hi('Special', { fg = colors.bright_orange })
hi('SpecialChar', { fg = colors.bright_orange })
hi('Tag', { fg = colors.bright_cyan })
hi('Delimiter', { fg = colors.fg })
hi('SpecialComment', { fg = colors.bright_black })
hi('Debug', { fg = colors.soft_red })
hi('Underlined', { fg = colors.bright_blue, underline = true })
hi('Ignore', { fg = colors.bg2 })
hi('Error', { fg = colors.bright_red, bold = true })
hi('Todo', { fg = colors.bg, bg = colors.bright_yellow, bold = true })

-- LSP
hi('DiagnosticError', { fg = colors.bright_red })
hi('DiagnosticWarn', { fg = colors.bright_yellow })
hi('DiagnosticInfo', { fg = colors.bright_blue })
hi('DiagnosticHint', { fg = colors.bright_cyan })
hi('DiagnosticUnderlineError', { undercurl = true, sp = colors.bright_red })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.bright_yellow })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.bright_blue })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = colors.bright_cyan })
hi('LspReferenceText', { bg = colors.bg2 })
hi('LspReferenceRead', { bg = colors.bg2 })
hi('LspReferenceWrite', { bg = colors.bg2 })

-- Treesitter
hi('@variable', { fg = colors.fg })
hi('@variable.builtin', { fg = colors.fg, italic = true })
hi('@variable.parameter', { fg = colors.fg })
hi('@constant', { fg = colors.bright_yellow })
hi('@constant.builtin', { fg = colors.bright_magenta })
hi('@constant.macro', { fg = colors.bright_yellow })
hi('@string', { fg = colors.bright_green })
hi('@string.documentation', { fg = colors.bright_black, italic = true })
hi('@string.escape', { fg = colors.bright_green })
hi('@character', { fg = colors.bright_green })
hi('@number', { fg = colors.bright_magenta })
hi('@boolean', { fg = colors.bright_magenta })
hi('@float', { fg = colors.bright_magenta })
hi('@function', { fg = colors.fg })
hi('@function.builtin', { fg = colors.fg })
hi('@function.macro', { fg = colors.fg })
hi('@method', { fg = colors.fg })
hi('@constructor', { fg = colors.fg })
hi('@parameter', { fg = colors.fg })
hi('@keyword', { fg = colors.soft_red })
hi('@keyword.function', { fg = colors.soft_red })
hi('@keyword.operator', { fg = colors.soft_red })
hi('@keyword.return', { fg = colors.soft_red })
hi('@conditional', { fg = colors.soft_red })
hi('@repeat', { fg = colors.soft_red })
hi('@label', { fg = colors.soft_red })
hi('@operator', { fg = colors.fg })
hi('@exception', { fg = colors.soft_red })
hi('@type', { fg = colors.fg })
hi('@type.builtin', { fg = colors.fg })
hi('@type.qualifier', { fg = colors.fg })
hi('@storageclass', { fg = colors.fg })
hi('@namespace', { fg = colors.fg })
hi('@module', { fg = colors.fg }) -- nvim 0.11 renamed @namespace -> @module; without this, module paths fall back to Structure (cyan)
hi('@module.builtin', { fg = colors.fg }) -- e.g. __future__, os; else defaults to Special (orange)
hi('@include', { fg = colors.fg })
hi('@preproc', { fg = colors.fg })
hi('@debug', { fg = colors.soft_red })
hi('@tag', { fg = colors.bright_cyan })
hi('@tag.attribute', { fg = colors.bright_green })
hi('@tag.delimiter', { fg = colors.fg })
hi('@punctuation.delimiter', { fg = colors.fg })
hi('@punctuation.bracket', { fg = colors.fg })
hi('@punctuation.special', { fg = colors.fg })
hi('@comment', { fg = colors.bright_black, italic = true })
hi('@property', { fg = colors.fg })
hi('@field', { fg = colors.fg })

-- Git
hi('GitSignsAdd', { fg = colors.bright_green })
hi('GitSignsChange', { fg = colors.bright_cyan })
hi('GitSignsDelete', { fg = colors.bright_red })

-- Diff syntax (for telescope previews, fugitive, etc.)
hi('diffAdded', { fg = colors.bright_green })
hi('diffRemoved', { fg = colors.bright_red })
hi('diffChanged', { fg = colors.bright_cyan })
hi('diffLine', { fg = colors.bright_cyan })
hi('diffFile', { fg = colors.bright_orange })
hi('diffIndexLine', { fg = colors.bright_magenta })
hi('diffOldFile', { fg = colors.bright_red })
hi('diffNewFile', { fg = colors.bright_green })

-- Telescope
hi('TelescopeBorder', { fg = colors.bright_black })
hi('TelescopePromptBorder', { fg = colors.bright_blue })
hi('TelescopeResultsBorder', { fg = colors.bright_black })
hi('TelescopePreviewBorder', { fg = colors.bright_black })
hi('TelescopeSelection', { bg = colors.bg2 })
hi('TelescopeMatching', { fg = colors.bright_orange, bold = true })

-- NeoTree
hi('NeoTreeNormal', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeNormalNC', { fg = colors.fg, bg = colors.bg })
hi('NeoTreeDirectoryIcon', { fg = colors.bright_blue })
hi('NeoTreeDirectoryName', { fg = colors.bright_blue })
hi('NeoTreeGitAdded', { fg = colors.bright_green })
hi('NeoTreeGitModified', { fg = colors.bright_cyan })
hi('NeoTreeGitDeleted', { fg = colors.bright_red })

-- Which-key
hi('WhichKey', { fg = colors.bright_cyan })
hi('WhichKeyGroup', { fg = colors.bright_blue })
hi('WhichKeyDesc', { fg = colors.bright_magenta })
hi('WhichKeySeperator', { fg = colors.bright_black })
hi('WhichKeySeparator', { fg = colors.bright_black })
hi('WhichKeyFloat', { bg = colors.bg1 })
hi('WhichKeyValue', { fg = colors.bright_black })
