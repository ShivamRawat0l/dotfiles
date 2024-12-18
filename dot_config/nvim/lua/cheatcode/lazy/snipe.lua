return {
	"leath-dub/snipe.nvim",
	keys = {
		{ "<leader><leader>", function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu" }
	},
	opts = {
		ui = {
			open_win_override = {
				title = "",
				border = "solid",
			},
			text_align = "right",
			preselect_current = true,
		},
		navigate = {
			open_vsplit = "<C-v>",
			under_cursor = "<cr>",
			change_tag = "C",
		},
		sort = "last"
	}
}
