local M = {}

function M.load(theme)
  theme.load_links({
    Special = {
      '@keyword.conditional.angular',
    },
  })
end

return M
