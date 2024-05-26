local M = {}

function M.load(theme)
  theme.load_links({
    Special = {
      '@keyword.conditional.angular',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
