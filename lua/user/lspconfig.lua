
--lsp config
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local keymap = vim.keymap.set

-- TypeScript
nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript",},
  cmd = { "typescript-language-server", "--stdio" },
}

-- volar
nvim_lsp.volar.setup{
  filetypes = {'vue', 'jsx', 'tsx'},
  cmd = { "vls" },
  root_dir = nvim_lsp.util.root_pattern("package.json", "vue.config.js", ".git"),
  init_options = {
    config = {
      css = {},
      emmet = {},
      html = {
        suggest = {}
      },
      javascript = {
        format = {}
      },
      stylusSupremacy = {},
      typescript = {
        format = {}
      },
      vetur = {
        completion = {
          autoImport = true,
          tagCasing = "kebab",
          useScaffoldSnippets = false
        },
        format = {
          defaultFormatter = {
            js = "prettier",
            ts = "prettier",
            html = "prettier",
            sass = "prettier",
            scss = "prettier"
          },
          defaultFormatterOptions = {},
          scriptInitialIndent = false,
          styleInitialIndent = false
        },
        grammar = {
          customBlocks = {},
          ignoreScriptKinds = {},
          options = {},
          tags = {}
        },
        useWorkspaceDependencies = false,
        validation = {
          script = false,
          style = true,
          template = true,
          interpolation = false,
        },
        experimental = {
          templateInterpolationService = true
        }
      }
    }
  }
}
-- lint
nvim_lsp.eslint.setup({
  bin = 'eslint_d', -- or `eslint_d`
  code_actions = {
    enable = true,
    apply_on_save = {
      enable = false,
      types = { "directive", "problem", "suggestion", "layout" },
    },
    disable_rule_comment = {
      enable = true,
      location = "separate_line", -- or `same_line`
    },
  },
  diagnostics = {
    enable = true,
    report_unused_disable_directives = false,
    run_on = "type", -- or `save`
  },
})

require('lint').linters_by_ft = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  vue = { 'eslint_d' },
}
vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    require('lint').try_lint()
  end,
})

-- prettier
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
    "vue"
    },
  },
}

-- lspsaga
-- local builtin = require 'telescope.builtin'
-- require('lspsaga').setup {
--   ui = {
--     border = 'rounded',
--   },
-- }
-- keymap('n', '<leader>o', '<cmd>Lspsaga outline<cr>')
-- keymap('n', 'gd', '<cmd>Lspsaga goto_definition<cr>')
-- keymap('n', '<space>r', '<cmd>Lspsaga rename<cr>')
-- keymap('n', 'gr', builtin.lsp_references)
-- keymap(
--   { 'n', 'v' },
--   '<space>la',
--   '<cmd>Lspsaga cade_action<cr>'
-- )
