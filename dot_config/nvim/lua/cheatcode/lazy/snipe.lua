return {
	"leath-dub/snipe.nvim",
	keys = {
		{ "<leader><leader>", function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu" }
	},
	opts = {
		position = "center",
		open_win_override = {
			border = "rounded", -- use "rounded" for rounded border
		},
		preselect_current = true,
		navigate = {
			open_vsplit = "<C-v>",
			open_split = "<C-h>",
			under_cursor = "<cr>",
			change_tag = "C",
		},
		sort = "last"
	}
}
