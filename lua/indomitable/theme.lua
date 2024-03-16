local palette = require('indomitable.palette')
local M = {}

M.spec = {
  --
  -- Base highlight groups
  --
  Normal = {
    hl = { fg = palette.foreground, bg = palette.background },
    links = {
      'LspInfoBorder',
    }
  },
  Foreground = {
    hl = { fg = palette.foreground },
    links = {
      'Identifier',
      'Type',
      'Title',
      '@lsp.typemod.type',
      -- '@lsp.typemod.variable.local',
    },
  },
  Search = {
    hl = { fg = palette.line_highlight, bg = palette.constants },
    links = {
      'IncSearch',
    },
  },
  Whitespace = {
    hl = { fg = palette.punctuation_dimmer },
  },
  Underlined = {
    hl = { fg = palette.foreground, underline = true },
  },
  Todo = {
    hl = { fg = palette.line_highlight, bg = palette.foreground, bold = true },
    links = {
      '@text.todo',
    },
  },
  NonText = { hl = { fg = palette.punctuation_dim } },
  ['@text.uri'] = {
    hl = { fg = palette.strings, underline = true },
  },

  --
  -- Editor theme highlight groups
  --
  CursorLine = { hl = { bg = palette.line_highlight } },
  CursorLineNr = { hl = { link = 'CursorLine', bold = true } },
  CursorColumn = { hl = { bg = palette.punctuation_dimmer } },
  ColorColumn = { hl = { bg = palette.punctuation_dimmer } },
  SignColumn = { hl = { link = 'Normal' } },
  LineNr = { hl = { fg = palette.punctuation_dim } },
  Visual = { hl = { bg = palette.selection } },
  VisualNC = { hl = { bg = palette.selection_dim } },
  MatchParen = { hl = { fg = palette.line_highlight, bg = palette.inserted, sp = palette.inserted, bold = true, underline = true, reverse = true, standout = true } },
  StatusLine = { hl = { fg = 'White', bg = palette.punctuation_dimmer } },
  Folded = { hl = { bg = palette.punctuation_dimmer } },
  WarningMsg = { hl = { fg = palette.deleted } },
  DiffAdd = { hl = { fg = palette.inserted, } },
  DiffChange = { hl = { fg = palette.changed, } },
  DiffDelete = { hl = { fg = palette.deleted, } },
  DiffText = { hl = { fg = palette.foreground, } },
  Pmenu = {
    hl = { fg = palette.foreground },
  },

  --
  -- Diagnostics
  --
  DiagnosticOk = { hl = { fg = palette.inserted } },
  DiagnosticHint = { hl = { fg = palette.constants } },
  DiagnosticInfo = { hl = { fg = palette.foreground } },
  DiagnosticWarn = { hl = { fg = palette.changed } },
  DiagnosticError = { hl = { fg = palette.deleted } },
  DiagnosticUnnecessary = { hl = { fg = palette.foreground, bg = palette.comments } },
  DiagnosticUnderlineOk =  { hl = { bg = palette.inserted, fg = 'Black', bold = true } },
  DiagnosticUnderlineWarn = { hl = { bg = palette.changed, fg = 'Black', bold = true } },
  DiagnosticUnderlineError = { hl = { bg = palette.deleted, fg = 'White', bold = true } },

  -- mason plugin
  MasonHeader = { hl = { fg = palette.foreground, bg = palette.keywords } },
  MasonHighlight = { hl = { fg = palette.functions } },
  MasonMutedBlock = { hl = { fg = palette.foreground, bg = palette.punctuation_dim } },

  --
  -- Basic theme highlight groups
  --
  Punctuation = {
    hl = { fg = palette.punctuation },
    links = {
      '@attribute',
      '@constructor.lua',
      '@keyword.jsdoc',
      '@punctuation',
      '@punctuation.special',
      '@tag.delimiter',
      '@conceal',
      'Conceal',
    },
  },
  Statement = {
    hl = { fg = palette.keywords },
    links = {
      '@include',
      '@lsp.type.keyword',
      -- '@lsp.type.keywordLiteral.zig',
      '@lsp.type.operator',
      '@operator',
      -- '@lsp.type.type.zig',
      '@tag',
      '@type.builtin',
      -- '@type.css',
      -- '@type.definition.css', -- FIXME: this should be linked to 'Special' but css highlighting isn't very good
      '@type.qualifier',
      -- '@type.scss',
      'PreProc',
      'StorageClass',
    },
  },
  Function = {
    hl = { fg = palette.functions },
    links = {
      '@constructor',
      '@function.builtin',
      '@function.call',
      '@tag.attribute',
    },
  },
  String = {
    hl = { fg = palette.strings },
    links = {
      '@text.quote',
    },
  },
  Constant = {
    hl = { fg = palette.constants },
    links = {
      '@constant.builtin',
      '@function.macro',
      '@string.escape',
      '@text.literal',
      '@variable.builtin',
      '@lsp.type.enumMember',
      'Macro',
    },
  },
  Comment = {
    hl = { fg = palette.comments },
    links = {
      '@string.documentation',
      '@lsp.mod.documentation',
    },
  },
  Special = {
    hl = { fg = palette.other },
    links = {
      '@constant',
      -- '@lsp.type.builtin.zig',
      '@lsp.typemod.variable.constant',
      -- '@lsp.mod.readonly',
      -- '@lsp.typemod.variable.readonly',
    },
  },
}

-- Loads any set of highlight group links. Ideally it is used like this:
-- ```lua
-- local theme = require('indomitable.theme')
-- theme.load(theme.Normal.links, {
--   '@lsp.type.attribute'
-- })
-- ```
local function load(links, ftgrps)
  for _, group in ipairs(ftgrps) do
    table.insert(links, group)
  end
end

function M.insert_links(group, links)
  if M.spec[group] then
    if M.spec[group].links == nil then
      M.spec[group]['links'] = {}
    end
    load(M.spec[group].links, links)
  else
    vim.api.nvim_err_writeln('Highlight group ' .. group .. ' does not exist')
  end
end

function M.load_links(links_table)
  for group, links in pairs(links_table) do
    M.insert_links(group, links)
  end
end

return M
