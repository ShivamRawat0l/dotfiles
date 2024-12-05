return {
    'echasnovski/mini.files',
    version = false,
    config = function()
        require('mini.files').setup({
            content = {
                filter = nil,
                prefix = nil,
                sort = nil,
            },

            mappings = {
                close       = 'q',
                go_in       = 'L',
                go_in_plus  = 'l',
                go_out      = 'H',
                go_out_plus = 'h',
                mark_goto   = "'",
                mark_set    = 'm',
                reset       = '<BS>',
                reveal_cwd  = '@',
                show_help   = 'g?',
                synchronize = '<C-s>',
                trim_left   = '<',
                trim_right  = '>',
            },

            options = {
                permanent_delete = false,
                use_as_default_explorer = true,
            },

            windows = {
                max_number = math.huge,
                preview = true,
                height = 100,
                width_focus = 30,
                width_nofocus = 20,
                width_preview = 100,
            },
        })
        vim.keymap.set("n", "-", require("mini.files").open, { desc = "Open parent directory" })
        vim.api.nvim_create_autocmd('User', {
            pattern = 'MiniFilesWindowUpdate',
            callback = function(args)
                local config = vim.api.nvim_win_get_config(args.data.win_id)
                config.height = 50
                if config.title[#config.title][1] ~= ' ' then
                    table.insert(config.title, { ' ', 'NormalFloat' })
                end
                if config.title[1][1] ~= ' ' then
                    table.insert(config.title, 1, { ' ', 'NormalFloat' })
                end

                vim.api.nvim_win_set_config(args.data.win_id, config)
            end,
        })
    end
}
