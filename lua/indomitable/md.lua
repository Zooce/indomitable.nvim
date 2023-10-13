local M = {}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@text.title.1.markdown',
      '@text.title.2.markdown',
      '@text.title.3.markdown',
      '@text.title.4.markdown',
      '@text.title.5.markdown',
      '@text.title.6.markdown',
      '@text.title.1.marker.markdown',
      '@text.title.2.marker.markdown',
      '@text.title.3.marker.markdown',
      '@text.title.4.marker.markdown',
      '@text.title.5.marker.markdown',
      '@text.title.6.marker.markdown',
    },
    Comment = {
      '@text.reference.markdown',
      '@text.reference.markdown_inline',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
