return {
	"folke/trouble.nvim",
	opts = {
		auto_close = true, -- auto close when there are no items
		auto_open = true,
		focus = true,
		win = {
			type = "split",
			position = "right",
			relative = "win",
			size = 0.4,
		},
		keys = {
			[";"] = "jump",
			["<C-y>"] = "jump",
			["<cr>"] = "jump",
		}
	}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<C-t>",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
	},
}
