-- keybinding

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

lvim.keys.normal_mode["<"] = "<<"
lvim.keys.normal_mode[">"] = ">>"
lvim.keys.normal_mode["H"] = "^"
lvim.keys.normal_mode["L"] = "$"

lvim.keys.normal_mode["<leader>]"] = ":bn<CR>"
lvim.keys.normal_mode["<leader>["] = ":bp<CR>"


-- plug easymotion
keymap("n", "ss", "<Plug>(easymotion-s2)")

