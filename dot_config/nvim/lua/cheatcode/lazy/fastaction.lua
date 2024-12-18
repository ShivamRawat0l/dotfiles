return {
	'Chaitanyabsprip/fastaction.nvim',
	opts = {},
	config = function()
		require('fastaction').setup({})
		vim.keymap.set(
			{ 'n', 'v', 'i' },
			'<C-a>',
			'<cmd>lua require("fastaction").code_action()<CR>',
			{ buffer = bufnr }
		)
	end
}
