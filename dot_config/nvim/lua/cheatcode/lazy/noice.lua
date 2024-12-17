return {
    {
        "rcarriga/nvim-notify",
        lazy = false,
        opts = {
            timeout = 3000,
            max_height = function()
                return math.floor(vim.o.lines * 0.75)
            end,
            max_width = function()
                return math.floor(vim.o.columns * 0.60)
            end,
            on_open = function(win)
                vim.api.nvim_win_set_config(win, { focusable = false })
            end,
            render = "default",
            stages = "fade_in_slide_out",
        },
    },
    {
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
            "rcarriga/nvim-notify",
        }
    }
}
