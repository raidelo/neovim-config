return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        lua_ls = {
          mason = not In_termux(), -- Android platform is unsupported.
        },
        stylua = {
          mason = not In_termux(), -- Android platform is unsupported.
        },
        codelldb = {
          mason = not In_termux(), -- Android platform is unsupported.
        },
        clangd = {
          mason = not In_termux(), -- Android platform is unsupported.
        },
        html = {
          mason = true,
        },
        cssls = {
          mason = true,
        },
        rust_analyzer = {
          mason = true,
        },
      },
    },
  },
}
