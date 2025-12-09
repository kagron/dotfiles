return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"nvim-ts-autotag",
		opts = {
			per_filetype = {
				["xsl"] = {
					enable_close = true,
				},
				["xslt"] = {
					enable_close = true,
				},
			},
			aliases = {
				["xsl"] = "xml",
				["xslt"] = "xml",
			},
		},
	},
}
