return {
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("noice").setup()
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
			vim.keymap.set("n", "<C-j>", "<Cmd>NvimTreeToggle<CR>")
		end,
	},
	{
		"romgrk/barbar.nvim",
		config = function()
			vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>")
			vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>")
			vim.keymap.set("n", "<S-q>", "<Cmd>BufferClose<CR>")
		end,
	},
	"nvim-tree/nvim-web-devicons",
}
