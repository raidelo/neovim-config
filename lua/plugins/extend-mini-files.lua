return {
  "nvim-mini/mini.files",
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
    {
      "<leader>fm",
      function()
        require("mini.files").open(LazyVim.root(), true)
      end,
      desc = "Open mini.files (root)",
    },
  },
  opts = {
    mappings = {
      go_in = "<Right>",
      go_out = "<Left>",
      go_in_plus = "<S-Right>",
      go_out_plus = "<S-Left>",
      go_in_vertical = "<C-V>",
      go_in_horizontal = "<C-S>",
      go_in_vertical_plus = "<C-V>",
      go_in_horizontal_plus = "<C-S>",
    },
    windows = {
      max_number = 3,
      preview = true,
      width_focus = 45,
      width_nofocus = 15,
      width_preview = 30,
    },
    options = {
      permanent_delete = false,
      use_as_default_explorer = true,
    },
  },
}
