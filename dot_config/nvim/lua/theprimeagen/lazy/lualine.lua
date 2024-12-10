return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local opts = {
            options = {
                icons_enabled = true,
                theme = 'auto',
            },
            sections = {
                lualine_c = {

                }
            }
        }

        local trouble = require("trouble")
        local symbols = trouble.statusline({
            mode = "lsp_document_symbols",
            groups = {},
            title = false,
            filter = { range = true },
            format = "{kind_icon}{symbol.name:Normal}",
            hl_group = "lualine_c_normal",
        })

        table.insert(opts.sections.lualine_c, {
            symbols.get,
            cond = symbols.has,
        })

        require('lualine').setup(opts)
    end
}
