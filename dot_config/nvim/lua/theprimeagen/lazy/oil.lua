return {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    config = function()
        CustomOilBar = function()
            local path = vim.fn.expand "%"
            path = path:gsub("oil://", "  ")
            return "  " .. vim.fn.fnamemodify(path, ":.")
        end

        require("oil").setup({
            default_file_explorer = true,
            delete_to_trash = true,
            view_options = {
                show_hidden = true,
                natural_order = "fast",
            },
            win_options = {
                wrap = true,
                winbar = "%{v:lua.CustomOilBar()}",
                winhl = "Normal:Normal,Float:Float,FloatBorder:FloatBorder",
            },
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            skip_confirm_for_simple_edits = true,
            preview_split = "right",
            extra_scp_args = {},
            git = {
                add = function(_)
                    return true
                end,
                mv = function(_, _)
                    return true
                end,
                rm = function(_)
                    return true
                end,
            },
            float = {
                padding = 0,
                max_width = 0,
                max_height = 0,
                border = "rounded",
                win_options = {
                    winblend = 1,
                },
                get_win_title = nil,
                preview_split = "right",
                override = function(conf)
                    return conf
                end,
            },
            preview_win = {
                update_on_cursor_moved = true,
                preview_method = "fast_scratch",
                disable_preview = function(_)
                    return false
                end,
                win_options = {
                    winhl = "Normal:Normal,Float:Float,FloatBorder:FloatBorder",
                },
            },
            keymaps = {
                ["g?"] = { "actions.show_help", mode = "n" },
                ["<CR>"] = "actions.select",
                [";"] = "actions.select",
                ["<C-v>"] = { "actions.select", opts = { vertical = true } },
                ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
                --["<C-p>"] = "actions.preview",
                ["q"] = { "actions.close", mode = "n" },
                ["<C-l>"] = "actions.refresh",
                ["-"] = { "actions.parent", mode = "n" },
                ["_"] = { "actions.open_cwd", mode = "n" },
                ["`"] = { "actions.cd", mode = "n" },
                ["gs"] = { "actions.change_sort", mode = "n" },
                ["gx"] = "actions.open_external",
                ["g."] = { "actions.toggle_hidden", mode = "n" },
                ["g\\"] = { "actions.toggle_trash", mode = "n" },
            },
            use_default_keymaps = false,
        })
        vim.keymap.set('n', '-', function()
            local oil = require("oil")
            oil.open_float()
            vim.wait(500, function()
                return oil.get_cursor_entry() ~= nil
            end)
            if oil.get_cursor_entry() then
                oil.open_preview()
            end
        end)
    end
}
