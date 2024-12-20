function ColorMyPencils(theme)
	theme = "everforest"
	vim.cmd.colorscheme(theme)
	if true then
		local color = "#000000"
		--vim.api.nvim_set_hl(0, "Visual", { bg = "#264f78" });
		vim.api.nvim_set_hl(0, "TroubleNormal", { bg = color });
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualText", { bg = color });
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = color });
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = color });
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = color });
		--vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = color });
		vim.api.nvim_set_hl(0, "Normal", { bg = color }); -- this is the background color of the editor
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = color })
		vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#020401" });
		vim.api.nvim_set_hl(0, "NormalNC", { bg = color });
		vim.api.nvim_set_hl(0, "SignColumn", { bg = color });
		vim.api.nvim_set_hl(0, "StatusLine", { bg = color, });
		vim.api.nvim_set_hl(0, "StatusLineNC", { bg = color });
		vim.api.nvim_set_hl(0, "ColorColumn", { bg = color });
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = color, link = "Normal" });
		vim.api.nvim_set_hl(0, "Float", { bg = color });
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = color });
		vim.api.nvim_set_hl(0, "Pmenu", { bg = color });
		--vim.api.nvim_set_hl(0, "PmenuSel", { bg = color }); -- this is the background color of the selected item in the popup menu
		--
		vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = color });
		vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = color });
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = color });
		vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { bg = color });
		vim.api.nvim_set_hl(0, "CmpDocumentation", { bg = color });
		vim.api.nvim_set_hl(0, "LineNr", { bg = color });
		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color });
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = color });
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = color });
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = color });
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = color });
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = color });
		vim.api.nvim_set_hl(0, "MiniFilesBorder", { bg = color });
		vim.api.nvim_set_hl(0, "MiniFilesNormal", { bg = color });
		vim.api.nvim_set_hl(0, "VertSplit", { bg = color });
		vim.api.nvim_set_hl(0, "ScrollbarSlider", { bg = color });
		vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = color });
		vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = color });
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = color });
		vim.api.nvim_set_hl(0, "MsgArea", { bg = color });
	end
end

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = false
	},

	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		enabled = false
	},
	{
		"tiagovla/tokyodark.nvim",
		opts = {
		},
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			vim.cmd [[colorscheme tokyodark]]
		end,
		enabled = false
	},
	{ "EdenEast/nightfox.nvim", enabled = false },
	{
		'glepnir/zephyr-nvim',
		name = 'zephyr',
		lazy = false,
		priority = 1000,
		enabled = false
	},
	{
		'uloco/bluloco.nvim',
		lazy = false,
		priority = 1000,
		dependencies = { 'rktjmp/lush.nvim' },
		config = function()
			-- your optional config goes here, see below.
		end,
		enabled = false
	},
	{
		"sho-87/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		enabled = false
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		enabled = false,
		config = function()
			require("onedark").setup({
				style = "darker",
				lualine = {
					transparent = true, -- lualine center bar transparency
				},
				highlights = {}
			})
			require("onedark").load()
		end
	},
	{
		"neanias/everforest-nvim",
		name = "everforestz",
		config = function()
			require("everforest").setup()
		end,
	},
}
