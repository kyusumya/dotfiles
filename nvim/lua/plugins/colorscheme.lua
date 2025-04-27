return {
	"catppuccin/nvim",
	config = function()
		vim.cmd("colorscheme catppuccin-mocha")
		vim.cmd("hi Normal guibg=NONE")
	end,
}
