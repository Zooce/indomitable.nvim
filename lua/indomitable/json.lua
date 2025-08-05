local M = {}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@property.json',
      '@property.jsonc',
    }
  })
end

return M
