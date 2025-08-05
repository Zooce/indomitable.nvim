local M ={}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@type.ini',
    },
    String = {
      '@text.ini',
    },
  })
end

return M
