return {
	'echasnovski/mini.surround',
	config = function()
		require('mini.surround').setup({
			mappings = {
				add = '<C-y>a', -- Add surrounding in Normal and Visual modes
				delete = '<C-y>d', -- Delete surrounding in Normal and Visual modes
				find = '<C-y>f', -- Find surrounding (to the right)
				find_left = '<C-y>F', -- Find surrounding (to the left)
				highlight = '<C-y>h', -- Highlight surrounding
				replace = '<C-y>r', -- Replace surrounding
				update_n_lines = '<C-y>n', -- Update `n_lines`
				suffix_last = '<C-y>l', -- Suffix to search with "prev" method
				suffix_next = '<C-y>n', -- Suffix to search with "next" method
			},
		})
	end,
}
