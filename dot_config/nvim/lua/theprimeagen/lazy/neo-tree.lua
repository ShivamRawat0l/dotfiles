return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			window = {
				position = "current",
				mappings = {
					[";"] = "open",
					["l"] = "open",
					["<esc>"] = "cancel", -- close preview or floating neo-tree window
					["<C-h>"] = "open_split",
					["<C-v>"] = "open_vsplit",
					["h"] = "close_all_subnodes",
				}
			},
		})
	end
}
