return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"cssls",
					"jsonls",
					"pyright",
					"rust_analyzer",
				},
			})

			for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
				require("lspconfig")[server].setup({
					capabilities = require("cmp_nvim_lsp").default_capabilities(
						vim.lsp.protocol.make_client_capabilities()
					),
				})
			end
		end,
	},
	"neovim/nvim-lspconfig",
}
