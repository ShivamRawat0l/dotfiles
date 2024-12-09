function ColorMyPencils(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)
end

local color = "#0a0a0a"
return {
    {
        "navarasu/onedark.nvim",
        name = "onedark",
        config = function()
            require("onedark").setup({
                style = "darker",
                transparent = true,
                -- Lualine options --
                lualine = {
                    transparent = false, -- lualine center bar transparency
                },

                highlights = {

                    --Normal = { bg = '#000000' },
                    --NormalNC = { bg = '#000000' },
                    -- Optionally, set other background-related highlights to black
                    SignColumn = { bg = color },
                    StatusLine = { bg = color },
                    StatusLineNC = { bg = color },
                    -- Floating windows
                    FloatBorder = { bg = color },
                    NormalFloat = { bg = color },
                    -- Popup menu
                    Pmenu = { bg = color },
                    --PmenuSel = { bg = color},
                    -- Completion menu
                    CmpDocumentationBorder = { bg = color },
                    CmpDocumentation = { bg = color },
                    -- Sidebar and tree-like views
                    --LineNr = { bg = '#000000' },
                    --CursorLineNr = { bg = '#000000' },
                    -- Telescope and other plugin-specific backgrounds
                    TelescopeBorder = { bg = color },
                    TelescopeNormal = { bg = color },
                    TelescopePromptBorder = { bg = color },
                    TelescopeResultsBorder = { bg = color },
                    TelescopePreviewBorder = { bg = color },
                    -- Mini.files and other file explorers,
                    MiniFilesBorder = { bg = color },
                    MiniFilesNormal = { bg = color },

                    -- Vertical split and scrollbar
                    VertSplit = { bg = color },
                    ScrollbarSlider = { bg = color },

                    -- Specific plugin backgrounds
                    NvimTreeNormal = { bg = color },
                    NvimTreeWinSeparator = { bg = color },

                    -- Ensure scrolling background is black
                    --EndOfBuffer = { bg = color},
                    --MsgArea = { bg = color}
                }
            })
            require("onedark").load()
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
