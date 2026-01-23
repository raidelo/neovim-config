return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["markdown"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["html"] = { "prettier" },
        ["sql"] = { "sql_formatter" },
      },
    },
  },
}
