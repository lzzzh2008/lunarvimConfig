-- leaderkey
lvim.leader = "space"

-- options
vim.opt.modelines = 0
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.autowriteall = true
vim.opt.cindent = true
vim.opt.autoread = true
-- 查找忽略大小写
vim.opt.ignorecase = true
--查找大写时不忽略
vim.opt.smartcase = true
--将tab转换成空格
vim.opt.expandtab = true

vim.opt.showmatch = true
vim.opt.matchtime = 5
vim.opt.autowrite = true


-- scheme
lvim.colorscheme = "everforest"

-- prettier
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact", "javascript", "vue" },
  },
}

