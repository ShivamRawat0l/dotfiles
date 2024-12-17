return {
	"folke/noice.nvim",
	event = "VeryLazy",
	init = function() vim.opt.lazyredraw = false end,
	config = function()
		require("noice").setup {
			lsp = {
				documentation = {
					view = "hover",
					opts = {
						lang = "markdown",
						replace = true,
						render = "plain",
						format = { "{message}" },
						position = { row = 2, col = 2 },
						border = {
							style = "rounded",
						},
						win_options = {
							concealcursor = "n",
							conceallevel = 3,
							winhighlight = {
								Normal = "CmpPmenu",
								FloatBorder = "DiagnosticSignInfo",
							},
						},
					},
				},
			},
			messages = { view = "mini", view_warn = "mini" },
			views = {
				notify = {
					replace = true,
					merge = true,
					enabled = true,
					view = "notify",
				},
			}
		}
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
	}
}
