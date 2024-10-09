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
      '@markup.list.unchecked.markdown',
      'markdownH1',
      'markdownH2',
      'markdownH3',
      'markdownH4',
      'markdownH5',
      'markdownH6',
      'markdownH1Delimiter',
      'markdownH2Delimiter',
      'markdownH3Delimiter',
      'markdownH4Delimiter',
      'markdownH5Delimiter',
      'markdownH6Delimiter',
      'markdownHeadingRule',
    },
    Function = {
      '@markup.quote.markdown',
      '@markup.italic.markdown_inline',
      '@markup.strong.markdown_inline',
      'markdownBlockquote',
      'markdownItelic',
      'markdownBold',
    },
    String = {
      '@markup.link.markdown_inline',
      '@markup.link.label.markdown_inline',
      '@markup.link.label.markdown',
      '@markup.list.checked.markdown',
      'markdownLinkText',
      'markdownIdDeclaration',
    },
    Constant = {
      '@markup.raw.markdown_inline',
      '@markup.raw.block.markdown',
      'markdownCode',
      'markdownCodeBlock',
    },
    Comment = {
      '@markup.link.url.markdown_inline',
      '@markup.link.url.markdown',
      'markdownLinkUrl',
      'markdownId',
    },
    Punctuation = {
      '@markup.list.markdown',
      '@markup.raw.delimiter.markdown',
      '@markup.raw.delimiter.markdown_inline',
      'markdownListMarker',
      'markdownOrderedListMarker',
      'markdownLinkTextDelimiter',
      'markdownLinkDelimiter',
      'markdownIdDelimiter',
      'markdownItalicDelimiter',
      'markdownBoldDelimiter',
      'markdownRule',
      'markdownCodeDelimiter',
    },
  })
end

return M

-- vim: ts=2 sts=2 sw=2 et
