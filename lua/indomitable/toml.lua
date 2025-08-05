local M ={}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@type.toml',
    },
  })
end

return M
