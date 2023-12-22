-- Additional Plugins
lvim.plugins = {
  "opalmay/vim-smoothie",
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },
  "windwp/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "nvim-tree/nvim-web-devicons",
  {
    "sustech-data/wildfire.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("wildfire").setup()
    end,
  },
  -- 'nvimdev/lspsaga.nvim',
  "f-person/git-blame.nvim",
  "petertriho/nvim-scrollbar",
  "sainnhe/everforest",
  "franbach/miramare",
  --"easymotion/vim-easymotion",
  "rbgrouleff/bclose.vim",
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  --"xianzhon/vim-code-runner",
  "mhartington/formatter.nvim",
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  {
    "CRAG666/code_runner.nvim",
    config = true,
    keys = {
      {
        "<leader>r",
        function()
          require("code_runner").run_code()
        end,
        desc = "Execute Code",
      },
    },
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
}
