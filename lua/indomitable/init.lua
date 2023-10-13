local theme = require('indomitable.theme')
require('indomitable.ini').load(theme)
require('indomitable.md').load(theme)
require('indomitable.rust').load(theme)
require('indomitable.toml').load(theme)

local M = {}

function M.load()
  vim.o.termguicolors = true
  if vim.g.colors_name then
    vim.cmd [[hi clear]]
  end
  vim.o.background = 'dark'
  vim.g.colors_name = 'indomitable'

  for target, spec in pairs(theme.spec) do
    vim.api.nvim_set_hl(0, target, spec.hl)
    if spec.links then
      for _, group in ipairs(spec.links) do
        vim.api.nvim_set_hl(0, group, { link = target })
      end
    end
  end
end

return M

-- vim: ts=2 sts=2 sw=2 et
