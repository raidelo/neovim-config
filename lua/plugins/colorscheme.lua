return {
  { "LazyVim/LazyVim", opts = { colorscheme = "vscode" } },

  -- Catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
  },

  -- TokyoNight
  {
    "folke/tokyonight.nvim",

    lazy = true,
    priority = 1000,
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
  },

  -- VSCode theme
  {
    "Mofiqul/vscode.nvim",
    lazy = true,
    priority = 1000,
  },
}
