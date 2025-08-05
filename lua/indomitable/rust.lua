local M = {}

function M.load(theme)
	theme.load_links({
		Statement = {
			"@lsp.type.builtinType.rust",
		},
		Foreground = {
			"@lsp.type.namespace.rust",
		},
	})
end

return M
