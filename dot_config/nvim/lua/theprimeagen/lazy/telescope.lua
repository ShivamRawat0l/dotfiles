local layout_strategies = require "telescope.pickers.layout_strategies"
return {
	"nvim-telescope/telescope.nvim",

	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim"
	},

	config = function()
		local telescope = require("telescope")
		telescope.setup({})
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader><C-p>', builtin.find_files, {})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ps', function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end)
		vim.keymap.set('n', '<leader>pWs', function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end)
		local first = true
		vim.keymap.set('n', '<C-f>', function()
			if first then
				first = false
				builtin.live_grep()
			else
				builtin.resume()
			end
		end)
		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
		vim.keymap.set('n', '<leader>vc', builtin.colorscheme, {})
		vim.keymap.set('n', '<leader>vq', builtin.quickfix, {})
	end
}
