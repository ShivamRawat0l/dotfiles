-- Setting the colorscheme for the neovim
function ColorMyPencils(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
end

return {
    {
        "navarasu/onedark.nvim",
        name = "onedark",
        config = function()
            require("onedark").setup({
                style = "darker",
                highlights = {
                    Normal = { bg = '#000000' },
                    NormalNC = { bg = '#000000' },
                    -- Optionally, set other background-related highlights to black
                    SignColumn = { bg = '#000000' },
                    StatusLine = { bg = '#000000' },
                    StatusLineNC = { bg = '#000000' },
                    -- Floating windows
                    FloatBorder = { bg = '#000000' },
                    NormalFloat = { bg = '#000000' },
                    -- Popup menu
                    Pmenu = { bg = '#000000' },
                    PmenuSel = { bg = '#000000' },
                    -- Completion menu
                    CmpDocumentationBorder = { bg = '#000000' },
                    CmpDocumentation = { bg = '#000000' },
                    -- Sidebar and tree-like views
                    LineNr = { bg = '#000000' },
                    CursorLineNr = { bg = '#000000' },
                    -- Telescope and other plugin-specific backgrounds
                    TelescopeBorder = { bg = '#000000' },
                    TelescopeNormal = { bg = '#000000' },
                    TelescopePromptBorder = { bg = '#000000' },
                    TelescopeResultsBorder = { bg = '#000000' },
                    TelescopePreviewBorder = { bg = '#000000' },
                    -- Mini.files and other file explorers,
                    MiniFilesBorder = { bg = '#000000' },
                    MiniFilesNormal = { bg = '#000000' },

                    -- Vertical split and scrollbar
                    VertSplit = { bg = '#000000' },
                    ScrollbarSlider = { bg = '#000000' },

                    -- Specific plugin backgrounds
                    NvimTreeNormal = { bg = '#000000' },
                    NvimTreeWinSeparator = { bg = '#000000' },

                    -- Ensure scrolling background is black
                    EndOfBuffer = { bg = '#000000' },
                    MsgArea = { bg = '#000000' }
                }
            })
        end
    },
    {
        "neanias/everforest-nvim",
        name = "everforestz",
        config = function()
            require("everforest").setup({
            })
        end,
    },

}
