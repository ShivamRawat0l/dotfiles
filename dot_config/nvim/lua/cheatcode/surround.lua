-- Wrapper
vim.keymap.set("v", "{", "di{}<C-c>hp")
vim.keymap.set("v", "}", "di{}<C-c>hp")
vim.keymap.set("v", "[", "di[]<C-c>hp")
vim.keymap.set("v", "]", "di[]<C-c>hp")
vim.keymap.set("v", "(", "di()<C-c>hp")
vim.keymap.set("v", ")", "di()<C-c>hp")
vim.keymap.set("v", "'", "di''<C-c>hp")
vim.keymap.set("v", '"', 'di""<C-c>hp')
-- Currently only removed the brackets
vim.keymap.set("v", '<C-h>', '"adi <Esc>ev%d"ap', { noremap = true })
vim.keymap.set("n", '<C-h>', 'a<Backspace><Esc>')
