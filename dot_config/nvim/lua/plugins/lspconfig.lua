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
        -- require'lspconfig'.pylyzer.setup{}
        vim.lsp.config('pyright', {})
        vim.lsp.config('lua_ls', {})
        vim.lsp.config('texlab', {})
        vim.lsp.config('cmake', {})

        vim.lsp.config('hdl_checker', {
            cmd = { 'hdl_checker', '--lsp' },
            filetypes = { 'vhdl', 'verilog', 'systemverilog' },
            root_markers = { '.git' },
        })

    end,
}
