-- Additional Plugins
lvim.plugins = {
  "opalmay/vim-smoothie",
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  {
      "sustech-data/wildfire.nvim",
      event = "VeryLazy",
      dependencies = { "nvim-treesitter/nvim-treesitter" },
      config = function()
          require("wildfire").setup()
      end,
  },
  "f-person/git-blame.nvim",
  "petertriho/nvim-scrollbar",
  "sainnhe/everforest",
  "franbach/miramare",
  "easymotion/vim-easymotion",
  "rbgrouleff/bclose.vim",
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  "xianzhon/vim-code-runner",
  "mhartington/formatter.nvim",
  { "christianchiarulli/telescope-tabs", branch = "chris" },
}

