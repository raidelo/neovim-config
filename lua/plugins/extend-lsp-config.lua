local in_termux = function()
  return os.getenv("TERMUX_VERSION") ~= nil
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        lua_ls = {
          mason = not in_termux(), -- Android platform is unsupported.
        },
        stylua = {
          mason = not in_termux(), -- Android platform is unsupported.
        },
        ruff = {
          mason = not in_termux(), -- Android platform is unsupported.
        },
        clangd = {
          mason = not in_termux(), -- Android platform is unsupported.
        },
      },
    },
  },
}
