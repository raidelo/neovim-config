return {
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      { "<leader>hs", ":Gitsigns stage_hunk<cr>", desc = "Stage Hunk" },
      { "<leader>hS", ":Gitsigns stage_buffer<cr>", desc = "Stage Buffer" },
      { "<leader>hr", ":Gitsigns reset_hunk<cr>", desc = "Reset Hunk" },
      { "<leader>hR", ":Gitsigns reset_buffer<cr>", desc = "Reset Buffer" },
      { "<leader>hu", ":Gitsigns undo_stage_hunk<cr>", desc = "Undo Stage Hunk" },
      { "<leader>hp", ":Gitsigns preview_hunk_inline<cr>", desc = "Preview Hunk Inline" },
      { "<leader>hb", ":Gitsigns blame_line<cr>", desc = "Blame Line" },
      { "<leader>hB", ":Gitsigns blame<cr>", desc = "Blame Buffer" },
      { "<leader>hd", ":Gitsigns diffthis<cr>", desc = "Diff This" },
      { "<leader>hD", ":Gitsigns diffthis ~<cr>", desc = "Diff This ~" },
    },
  },
}
