-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,
    },
    go = {
      require("formatter.filetypes.go").gofmt,
    },
    vue = {
      require("formatter.filetypes.vue").prettier,
    },
    js = {
      require("formatter.filetypes.javascript").prettier,
    },
    ts = {
      require("formatter.filetypes.typescript").prettier,
    },
    tsx = {
      require("formatter.filetypes.typescriptreact").prettier,
    },
    jsx = {
      require("formatter.filetypes.javascriptreact").prettier,
    }
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    }
  }
}
-- keymap
vim.keymap.set("n", "<leader>FF", ":Format<CR>", { noremap = true, silent = true })
-- nnoremap <silent> <leader>F :FormatWrite<CR>
