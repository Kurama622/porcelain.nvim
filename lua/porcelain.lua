local api, g = vim.api, vim.g

local porcelain = {}

local function shl(group, properties)
  api.nvim_set_hl(0, group, properties)
end

function porcelain.load()
  g.colors_name = 'porcelain'
  local colors = {
    bg = '#131824',
    base04 = '#00202b',
    base03 = '#45465e',
    base02 = '#363646',
    base01 = '#6e7171',
    base00 = '#657b83',
    base0 = '#839496',
    base1 = '#93a1a1',
    base2 = '#eee8d5',
    base3 = '#fdf6e3',
    yellow = '#e0af68',
    orange = '#ff9e64',
    red = '#d75f5f',
    purple = '#887ec8',
    blue = '#268bd2',
    cyan = '#2aa198',
    green = '#84a800',
    green01 = '#104410',
    magenta = '#bb9af7',
    violet = '#bc84a8',
    dfred = '#ffdce0',
    dbred01 = '#3f1f1f',
    dbred02 = '#914c54',
    dbred03 = '#713c44',
    dbred04 = '#4f0000',
    dfgreen = '#90a650',
    dbgreen01 = '#003b00',
    dbgreen02 = '#449dab',
    qblue = '#4491d4',
    aqua = '#75b6cd',
    -- Custom modifications
    fg = '#a9a8a8',
  }

  -- General editor highlights
  shl('Normal', { fg = colors.fg, bg = colors.bg })
  shl('EndOfBuffer', { fg = colors.bg })
  shl('CursorLine', { bg = colors.base02 })
  shl('CursorLineNr', { fg = colors.qblue })
  shl('LineNr', { fg = colors.base01 })
  shl('Comment', { fg = colors.base01, italic = true })
  shl('String', { fg = colors.cyan })
  shl('Function', { fg = colors.blue })
  shl('Keyword', { fg = colors.green, bold = true })
  shl('Constant', { fg = colors.purple })
  shl('Identifier', { fg = colors.blue })
  shl('Statement', { fg = colors.green })
  shl('Number', { link = 'Constant' })
  shl('PreProc', { fg = colors.orange })
  shl('Type', { fg = colors.yellow })
  shl('Special', { fg = colors.orange })
  shl('Operator', { fg = colors.base0 })
  shl('Underlined', { fg = colors.violet, underline = true })
  shl('Todo', { fg = colors.magenta, bold = true })
  shl('Error', { fg = colors.red, bg = colors.bg, bold = true })
  shl('WarningMsg', { fg = colors.orange })
  shl('IncSearch', { fg = colors.bg, bg = colors.orange })
  shl('Search', { fg = colors.bg, bg = colors.yellow })
  shl('Visual', { bg = colors.base03 })
  shl('Pmenu', { fg = colors.base0, bg = colors.base04 })
  shl('PmenuMatch', { fg = colors.cyan, bg = colors.base04, bold = true })
  shl('PmenuMatchSel', { fg = colors.cyan, bg = colors.base00, bold = true })
  shl('PmenuSel', { fg = colors.base3, bg = colors.base00 })
  shl('PmenuSbar', { bg = colors.base1 })
  shl('PmenuThumb', { bg = colors.base01 })
  shl('MatchParen', { bg = colors.base02 })
  shl('WinBar', { bg = colors.base02 })
  shl('NormalFloat', { bg = colors.base04 })
  shl('FloatBorder', { fg = colors.blue })
  shl('Title', { fg = colors.yellow })
  shl('WinSeparator', { fg = colors.base00 })
  shl('StatusLine', { bg = colors.base1, fg = colors.base02 })
  shl('StatusLineNC', { bg = colors.base00, fg = colors.base02 })
  shl('ModeMsg', { fg = colors.cyan })
  shl('ColorColumn', { bg = colors.base02 })
  shl('Title', { fg = colors.orange })
  shl('WildMenu', { fg = colors.base2, bg = colors.base02, reverse = true })
  shl('Folded', { bg = colors.base04, fg = colors.base0 })
  shl('ErrorMsg', { fg = colors.red })
  shl('ComplMatchIns', { fg = colors.base01 })
  shl('Directory', { fg = colors.cyan })
  shl('QuickFixLine', { bold = true })
  shl('qfFileName', { fg = colors.blue })
  shl('qfSeparator', { fg = colors.base01 })
  shl('qfLineNr', { link = 'LineNr' })
  shl('qfText', { link = 'Normal' })

  -- Treesitter highlights
  shl('@function', { fg = colors.blue })
  shl('@function.builtin', { fg = colors.blue })
  shl('@variable', { fg = colors.fg })
  shl('@variable.builtin', { fg = colors.fg })
  shl('@keyword', { fg = colors.green })
  shl('@keyword.import', { link = 'PreProc' })
  shl('@string', { fg = colors.cyan })
  shl('@string.escape', { fg = colors.cyan })
  shl('@string.regexp', { fg = colors.cyan })
  shl('@comment', { fg = colors.base01, italic = true })
  shl('@type', { fg = colors.yellow })
  shl('@type.builtin', { link = '@type' })
  shl('@constant', { link = 'Constant' })
  shl('@constant.builtin', { link = 'Constant' })
  shl('@constant.macro', { link = 'Constant' })
  shl('@constructor', { link = 'Function' })
  shl('@parameter', { fg = colors.base0 })
  shl('@class', { fg = colors.yellow })
  shl('@method', { fg = colors.blue })
  shl('@property', { link = '@variable' })
  -- shl('@field', { fg = colors.base0 })
  shl('@interface', { fg = colors.yellow })
  shl('@namespace', { fg = colors.base0 })
  shl('@punctuation', { fg = colors.base0 })
  shl('@operator', { link = 'Operator' })
  shl('@attribute', { fg = colors.yellow })
  shl('@boolean', { link = 'Constant' })
  shl('@number', { link = 'Number' })
  shl('@tag', { fg = colors.green })
  shl('@tag.attribute', { fg = colors.base0 })
  shl('@tag.delimiter', { fg = colors.base0 })

  -- Diagnostics
  shl('DiagnosticError', { fg = colors.red })
  shl('DiagnosticWarn', { fg = colors.yellow })
  shl('DiagnosticInfo', { fg = colors.blue })
  shl('DiagnosticHint', { fg = colors.cyan })
  shl('DiagnosticUnderlineError', { undercurl = true, sp = colors.red })
  shl('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.yellow })
  shl('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.blue })
  shl('DiagnosticUnderlineHint', { undercurl = true, sp = colors.cyan })

  -- LSP
  shl('LspReferenceText', { bg = colors.base02 })
  shl('LspReferenceRead', { bg = colors.base02 })
  shl('LspReferenceWrite', { bg = colors.base02 })

  -- Indentmini
  shl('IndentLine', { link = 'Comment' })
  shl('IndentLineCurrent', { fg = '#084352' })

  shl('DashboardHeader', { fg = colors.green })
  shl('ModeLineMode', { bold = true })
  shl('ModeLinefileinfo', { bold = true })

  -- Diff
  shl('DiffAdd', { bg = colors.dbgreen01 })
  shl('DiffDelete', { bg = colors.dbred01 })
  shl('DiffChange', { bg = colors.dbred01 })
  shl('DiffText', { bg = colors.dbred02, bold = true })
  shl('DiffText', { bold = true, bg = colors.dbred04 })
end

return porcelain
