local M = {}

function M.load(theme)
  theme.load_links({
    Statement = {
      '@markup.heading.1.markdown',
      '@markup.heading.2.markdown',
      '@markup.heading.3.markdown',
      '@markup.heading.4.markdown',
      '@markup.heading.5.markdown',
      '@markup.heading.6.markdown',
      '@markup.heading.1.marker.markdown',
      '@markup.heading.2.marker.markdown',
      '@markup.heading.3.marker.markdown',
      '@markup.heading.4.marker.markdown',
      '@markup.heading.5.marker.markdown',
      '@markup.heading.6.marker.markdown',
    },
    Comment = {
      '@text.reference.markdown',
      '@text.reference.markdown_inline',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
