return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        --        "williamboman/mason.nvim",
        --        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("lspconfig").clangd.setup {
            cmd = { "clangd", "--enable-config", "--log=error" } -- error/info/verbose
        }
        -- require'lspconfig'.pylyzer.setup{}
        require 'lspconfig'.pyright.setup {}
        require 'lspconfig'.lua_ls.setup {}
        require 'lspconfig'.texlab.setup {}
        require 'lspconfig'.cmake.setup {}

    end,
}
