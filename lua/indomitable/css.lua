local M = {}

function M.load(theme)
  theme.load_links({
    Function = {
      '@type.css',
      '@type.scss',
      -- '@type.definition.css', -- FIXME: this should be linked to 'Special' but css highlighting isn't very good
    },
    Special = {
      '@variable.scss',
      '@variable.parameter.scss',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
