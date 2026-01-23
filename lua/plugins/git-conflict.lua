return {
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    opts = {
      default_mappings = {
        ours = "<leader>ho",
        theirs = "<leader>ht",
        none = "<leader>h0",
        both = "<leader>hb",
        next = "]x",
        prev = "[x",
      },
    },
    keys = {
      { "<leader>hx", ":GitConflictListQf<cr>", desc = "List Conflicts" },
      { "<leader>hX", ":GitConflictRefresh<cr>", desc = "Refresh Conflicts" },
    },
  },
}
