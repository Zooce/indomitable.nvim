local M = {}

function M.load(theme)
  theme.load_links({
    Special = {
      '@variable.php_only'
    },
  })
end

return M
