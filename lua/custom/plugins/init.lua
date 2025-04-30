return {

  {
    "tpope/vim-fugitive",
    cmd = "Git",
  },

  {
    "folke/which-key.nvim",
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      local opts = require "nvchad.configs.nvimtree"
      opts.view.number = true
      opts.view.relativenumber = true
    end,
  },
}
