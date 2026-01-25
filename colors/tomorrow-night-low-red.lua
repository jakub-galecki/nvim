-- Tomorrow Night colorscheme with reduced red
-- Place this in ~/.config/nvim/colors/tomorrow-night-low-red.lua

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'tomorrow-night-low-red'

local colors = {
  bg = '#212121',  -- Dracula+ background
  fg = '#c5c8c6',
  selection = '#373b41',
  line = '#282a2e',
  comment = '#969896',
  
  orange = '#de935f',
  yellow = '#f0c674',
  green = '#b5bd68',
  cyan = '#8abeb7',
  blue = '#81a2be',
  purple = '#b294bb',
  teal = '#70c0b1',
  peach = '#e8a17c',
}

local highlights = {
  -- Editor
  Normal = { fg = colors.fg, bg = colors.bg },
  LineNr = { fg = colors.comment },
  CursorLine = { bg = colors.line },
  CursorLineNr = { fg = colors.yellow },
  Visual = { bg = colors.selection },
  Search = { fg = colors.bg, bg = colors.yellow },
  IncSearch = { fg = colors.bg, bg = colors.orange },
  
  -- Syntax
  Comment = { fg = colors.comment, italic = true },
  Constant = { fg = colors.orange },
  String = { fg = colors.green },
  Character = { fg = colors.green },
  Number = { fg = colors.orange },
  Boolean = { fg = colors.orange },
  Float = { fg = colors.orange },
  
  Identifier = { fg = colors.teal },
  Function = { fg = colors.blue },
  
  Statement = { fg = colors.purple },
  Conditional = { fg = colors.purple },
  Repeat = { fg = colors.purple },
  Label = { fg = colors.purple },
  Operator = { fg = colors.cyan },
  Keyword = { fg = colors.purple },
  Exception = { fg = colors.purple },
  
  PreProc = { fg = colors.purple },
  Include = { fg = colors.blue },
  Define = { fg = colors.purple },
  Macro = { fg = colors.peach },
  PreCondit = { fg = colors.purple },
  
  Type = { fg = colors.yellow },
  StorageClass = { fg = colors.yellow },
  Structure = { fg = colors.yellow },
  Typedef = { fg = colors.yellow },
  
  Special = { fg = colors.cyan },
  SpecialChar = { fg = colors.peach },
  Tag = { fg = colors.teal },
  Delimiter = { fg = colors.fg },
  SpecialComment = { fg = colors.comment },
  Debug = { fg = colors.orange },
  
  -- Errors and warnings
  Error = { fg = colors.orange, bold = true },
  ErrorMsg = { fg = colors.orange },
  WarningMsg = { fg = colors.yellow },
  
  -- Diff
  DiffAdd = { fg = colors.green },
  DiffChange = { fg = colors.yellow },
  DiffDelete = { fg = colors.orange },
  DiffText = { fg = colors.blue, bold = true },
  
  -- UI
  Pmenu = { fg = colors.fg, bg = colors.line },
  PmenuSel = { fg = colors.bg, bg = colors.blue },
  StatusLine = { fg = colors.fg, bg = colors.line },
  StatusLineNC = { fg = colors.comment, bg = colors.line },
  VertSplit = { fg = colors.selection },
  TabLine = { fg = colors.comment, bg = colors.line },
  TabLineFill = { bg = colors.line },
  TabLineSel = { fg = colors.fg, bg = colors.bg },
  
  -- TreeSitter
  ['@variable'] = { fg = colors.teal },
  ['@variable.builtin'] = { fg = colors.orange },
  ['@variable.parameter'] = { fg = colors.fg },
  ['@variable.member'] = { fg = colors.teal },
  ['@constant'] = { fg = colors.orange },
  ['@constant.builtin'] = { fg = colors.orange },
  ['@string'] = { fg = colors.green },
  ['@number'] = { fg = colors.orange },
  ['@boolean'] = { fg = colors.orange },
  ['@function'] = { fg = colors.blue },
  ['@function.builtin'] = { fg = colors.blue },
  ['@function.method'] = { fg = colors.blue },
  ['@keyword'] = { fg = colors.purple },
  ['@keyword.function'] = { fg = colors.purple },
  ['@keyword.return'] = { fg = colors.purple },
  ['@type'] = { fg = colors.yellow },
  ['@type.builtin'] = { fg = colors.yellow },
  ['@operator'] = { fg = colors.cyan },
  ['@punctuation.bracket'] = { fg = colors.fg },
  ['@punctuation.delimiter'] = { fg = colors.fg },
  ['@comment'] = { fg = colors.comment, italic = true },
  
  -- LSP
  DiagnosticError = { fg = colors.orange },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.cyan },
  DiagnosticHint = { fg = colors.comment },
}

for group, settings in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, settings)
end
