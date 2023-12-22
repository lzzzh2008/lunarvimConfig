-- keybinding

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap({ 'n', 'v' }, '<c-a>', 'ggVG')
keymap({ "n", "v" }, "<", "<<", opts)
keymap({ "n", "v" }, ">", ">>", opts)
keymap({ "n", "v" }, "H", "^", opts)
keymap({ "n", "v" }, "L", "$", opts)
keymap('n', '<leader>q', '<cmd>q<cr>')
keymap('n', '<leader>w', '<cmd>w<cr>')
keymap('n', '<leader>x', '<cmd>x<cr>')

lvim.keys.normal_mode["<leader>]"] = ":bn<CR>"
lvim.keys.normal_mode["<leader>["] = ":bp<CR>"

-- plug easymotion
--keymap("n", "ss", "<Plug>(easymotion-s2)")
