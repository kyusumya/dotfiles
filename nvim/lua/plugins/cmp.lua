return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				sources = {
					{
						name = "nvim_lsp",
					},
				},
				window = {
					completion = cmp.config.window.bordered({
						border = "single",
					}),
					documentation = cmp.config.window.bordered({
						border = "single",
					}),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-e>"] = cmp.mapping.abort(),
					["<Tab>"] = cmp.mapping.confirm({ select = true }),
				}),
			})
		end,
	},
	"hrsh7th/cmp-nvim-lsp",
}
