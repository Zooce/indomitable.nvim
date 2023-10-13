local M = {}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@lsp.type.builtinType.rust',
    },
    Foreground = {
      '@lsp.type.namespace.rust',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
