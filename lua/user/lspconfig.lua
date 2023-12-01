
--lsp config
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

-- TypeScript
nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript",},
  cmd = { "typescript-language-server", "--stdio" }
}

-- volar
nvim_lsp.volar.setup{
  filetypes = {'vue'},
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
  bin = 'eslint', -- or `eslint_d`
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

