--neovide
--
if vim.g.neovide then
  vim.opt.guifont = "FiraCode Nerd Font,宋体-简:h19"
  vim.opt.encoding = "utf-8"

  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_transparency = 0.85
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_cursor_trail_length = 0.3
  vim.g.neovide_cursor_animation_length = 0.08
  vim.g.neovide_cursor_animate_command_line = false



  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

  -- Allow clipboard copy paste in neovim
  vim.api.nvim_set_keymap(
    '',
    '<D-v>',
    '+p<CR>',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    '!',
    '<D-v>',
    '<C-R>+',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    't',
    '<D-v>',
    '<C-R>+',
    { noremap = true, silent = true }
  )
  vim.api.nvim_set_keymap(
    'v',
    '<D-v>',
    '<C-R>+',
    { noremap = true, silent = true }
  )
end
