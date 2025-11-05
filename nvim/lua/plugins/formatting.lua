return {
	{
		"stevearc/conform.nvim",
		---@type conform.setupOpts
		opts = {
			formatters_by_ft = {
				xml = { "xmlformatter" },
				xslt = { "xmlformatter" },
				json = { "jq" },
			},
		},
	},
}
