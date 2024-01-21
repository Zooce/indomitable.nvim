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
    Function = {
      '@markup.quote.markdown',
      '@markup.italic.markdown_inline',
      '@markup.strong.markdown_inline',
    },
    String = {
      '@markup.link.markdown_inline',
      '@markup.link.label.markdown_inline',
      '@markup.link.label.markdown',
    },
    Constant = {
      '@markup.raw.markdown_inline',
      '@markup.raw.block.markdown',
    },
    Comment = {
      '@markup.link.url.markdown_inline',
      '@markup.link.url.markdown',
    },
    Punctuation = {
      '@markup.list.markdown',
      '@markup.raw.delimiter.markdown',
      '@markup.raw.delimiter.markdown_inline',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
