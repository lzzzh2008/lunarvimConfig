
--lsp config
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

-- TypeScript
nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript",},
  cmd = { "typescript-language-server", "--stdio" }
}

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
          script = true,
          style = true,
          template = true
        },
        experimental = {
          templateInterpolationService = true
        }
      }
    }
  }
}
-- lint
nvim_lsp.eslint.setup({})

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

