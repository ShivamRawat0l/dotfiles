local function get_startup_path()
    local args = vim.v.argv
    for i, arg in ipairs(args) do
        if arg == "." then return vim.fn.getcwd() end
        if not arg:match("^[-]") and arg ~= vim.v.progpath then
            if vim.fn.isdirectory(arg) == 1 then
                return vim.fn.fnamemodify(arg, ':p:h')
            end
        end
    end
    return ""
end

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local startup_path = get_startup_path()
        if startup_path == "" then return end
        local session_file = startup_path .. "/.session"
        if vim.fn.filereadable(session_file) == 1 then
            local ok, err = pcall(function()
                vim.cmd("source " .. session_file)
            end)
        end
    end,
})

print("Session file: " .. get_startup_path() .. "/.session")
if get_startup_path() == "" then
    vim.keymap.set({ "n", "i" }, "<C-s>",
        "<Esc><leader>f:w<CR>",
        { expr = false, silent = true, noremap = true, remap = true })
else
    vim.keymap.set({ "n", "i" }, "<C-s>",
        "<Esc><leader>f:w<CR>:mksession! " .. get_startup_path() .. "/.session" .. "<CR>",
        { expr = false, silent = true, noremap = true, remap = true })
end
