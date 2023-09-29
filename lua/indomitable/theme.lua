local palette = require('indomitable.palette')
return {
  Normal = { fg = palette.foreground, bg = palette.background },
  Pmenu = { fg = palette.foreground },

  Foreground = { fg = palette.foreground },
  Identifier = { link = 'Foreground' },
  Type = { link = 'Foreground' },
  Title = { link = 'Foreground' },
  ['@lsp.typemod.type'] = { link = 'Foreground' },
  NvimInternalError = { link = 'Error' },
  RedrawDebugClear = { fg = 'Black', bg = 'Yellow' },
  Search = { fg = palette.line_highlight, bg = palette.constants },
  IncSearch = { link = 'Search' },
  Whitespace = { fg = palette.punctuation_dimmer },

  Underlined = { fg = palette.foreground, underline = true },

  -- punctuation
  Punctuation = { fg = palette.punctuation },
  Conceal = { link = 'Punctuation' },
  ['@punctuation'] = { link = 'Punctuation' },
  ['@attribute'] = { link = 'Punctuation' },
  ['@tag.delimiter'] = { link = 'Punctuation' },
  ['xmlTag'] = { link = 'Punctuation' },
  ['xmlProcessingDelim'] = { link = 'Punctuation' },
  ['@constructor.lua'] = { link = 'Punctuation' },
  ['@keyword.jsdoc'] = { link = 'Punctuation' },

  -- keywords
  Statement = { fg = palette.keywords },
  StorageClass = { link = 'Statement' },
  PreProc = { link = 'Statement' },
  ['@include'] = { link = 'Statement' },
  ['@type.builtin'] = { link = 'Statement' },
  ['@type.toml'] = { link = 'Statement' },
  ['@tag'] = { link = 'Statement' },
  ['xmlTagName'] = { link = 'Statement' },
  ['@type.css'] = { link = 'Statement' },
  ['@type.scss'] = { link = 'Statement' },
  ['@type.qualifier'] = { link = 'Statement' },
  ['@text.title.1.markdown'] = { link = 'Statement' },
  ['@text.title.2.markdown'] = { link = 'Statement' },
  ['@text.title.3.markdown'] = { link = 'Statement' },
  ['@text.title.4.markdown'] = { link = 'Statement' },
  ['@text.title.5.markdown'] = { link = 'Statement' },
  ['@text.title.6.markdown'] = { link = 'Statement' },
  ['@text.title.1.marker.markdown'] = { link = 'Statement' },
  ['@text.title.2.marker.markdown'] = { link = 'Statement' },
  ['@text.title.3.marker.markdown'] = { link = 'Statement' },
  ['@text.title.4.marker.markdown'] = { link = 'Statement' },
  ['@text.title.5.marker.markdown'] = { link = 'Statement' },
  ['@text.title.6.marker.markdown'] = { link = 'Statement' },
  ['@lsp.type.keyword'] = { link = 'Statement' },
  ['@lsp.type.operator'] = { link = 'Statement' },
  ['@lsp.type.type.zig'] = { link = 'Statement' },
  ['@lsp.type.keywordLiteral.zig'] = { link = 'Statement' },

  -- functions
  Function = { fg = palette.functions },
  ['@constructor'] = { link = 'Function' },
  ['@function.builtin'] = { link = 'Function' },
  ['@function.call'] = { link = 'Function' },
  ['@tag.attribute'] = { link = 'Function' },
  ['xmlAttrib'] = { link = 'Function' },
  ['@text.reference.markdown_inline'] = { link = 'Function' },
  helpHyperTextJump = { link = 'Function' },
  -- FIXME: css treesitter parser needs some updates: https://github.com/nvim-treesitter/nvim-treesitter/pull/4585

  -- strings
  String = { fg = palette.strings },
  ['@text.quote'] = { link = 'String' },
  ['@text.uri'] = { fg = palette.strings, underline = true },
  ['@text.uri.markdown_inline'] = { fg = palette.strings, underline = true },

  -- constants
  Constant = { fg = palette.constants },
  Macro = { link = 'Constant' },
  ['@constant.builtin'] = { link = 'Constant' },
  ['@function.macro'] = { link = 'Constant' },
  ['@string.escape'] = { link = 'Constant' },
  ['@variable.builtin'] = { link = 'Constant' },
  ['@text.literal'] = { link = 'Constant' },
  ['xmlEntity'] = { link = 'Constant' },
  ['xmlEntityPunct'] = { link = 'Constant' },

  -- comments
  Comment = { fg = palette.comments },
  ['@string.documentation'] = { link = 'Comment' },
  ['@text.reference.markdown'] = { link = 'Comment' },
  Todo = { fg = palette.line_highlight, bg = palette.foreground, bold = true },
  ['@text.todo'] = { link = 'Todo' },

  -- other
  Special = { fg = palette.other },
  ['@constant'] = { link = 'Special' },
  ['@lsp.type.builtin.zig'] = { link = 'Special' },
  ['@lsp.typemod.variable.constant'] = { link = 'Special' },
  ['@type.definition.css'] = { link = 'Statement' }, -- This should be linked to 'Special' but css highlighting isn't very good

  -- editor
  CursorLine = { bg = palette.line_highlight },
  CursorLineNr = { link = 'CursorLine', bold = true },
  CursorColumn = { bg = palette.punctuation_dimmer },
  ColorColumn = { bg = palette.punctuation_dimmer },
  SignColumn = { link = 'Normal' },
  LineNr = { fg = palette.punctuation_dim },
  Visual = { bg = palette.selection },
  VisualNC = { bg = palette.selection_dim },
  MatchParen = { fg = palette.line_highlight, bg = palette.inserted, sp = palette.inserted, bold = true, underline = true, reverse = true, standout = true },
  StatusLine = { fg = 'White', bg = palette.punctuation_dimmer },
  Folded = { bg = palette.punctuation_dimmer },
  WarningMsg = { fg = palette.deleted },

  -- diagnostics
  DiagnosticOk = { fg = palette.inserted },
  DiagnosticHint = { fg = palette.constants },
  DiagnosticInfo = { fg = palette.foreground },
  DiagnosticWarn = { fg = palette.changed },
  DiagnosticError = { fg = palette.deleted },
  DiagnosticUnnecessary = { fg = palette.foreground, bg = palette.comments },

  DiagnosticUnderlineOk =  { bg = palette.inserted, fg = 'Black', bold = true },
  DiagnosticUnderlineWarn = { bg = palette.changed, fg = 'Black', bold = true },
  DiagnosticUnderlineError = { bg = palette.deleted, fg = 'White', bold = true },

  NonText = { fg = palette.punctuation_dim },

  -- sign column status
  DiffAdd = { fg = palette.inserted, },
  DiffChange = { fg = palette.changed, },
  DiffDelete = { fg = palette.deleted, },
  DiffText = { fg = palette.foreground, },

  -- mason plugin
  MasonHeader = { fg = palette.foreground, bg = palette.keywords },
  MasonHighlight = { fg = palette.functions },
  MasonMutedBlock = { fg = palette.foreground, bg = palette.punctuation_dim },

  -- lspconfig plugin
  LspInfoBorder = { link = 'Normal' },
}

-- vim: ts=2 sts=2 sw=2 et
