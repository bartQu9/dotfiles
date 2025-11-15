return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        --        "williamboman/mason.nvim",
        --        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        vim.lsp.config('clangd', {
            cmd = { "clangd", "--enable-config", "--log=error" } -- error/info/verbose
        })
        vim.lsp.enable('clangd')

        vim.lsp.config('pyright', {})
        vim.lsp.enable('pyright')

        vim.lsp.config('lua_ls', {})
        vim.lsp.enable('lua_ls')

        vim.lsp.config('texlab', {})
        vim.lsp.enable('texlab')

        vim.lsp.config('cmake', {})
        vim.lsp.enable('cmake')

        vim.lsp.config('vhdl_ls', {}) -- rust_hdl
        vim.lsp.enable('vhdl_ls')
    end,
}
