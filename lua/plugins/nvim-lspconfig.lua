return {

    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
    }

    config = function()

        local on_attach = function()
            vim.keymap.set('n', 'K', vim.lsp.buf.hover())
        end

        require("lspconfig").lua_ls.setup({
            on_attach = on_attach,
        })

    end

}
