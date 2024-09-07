return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    dependencies = {
        "rafamadriz/friendly-snippets"        
    },
    config = function ()
        require("luasnip.loaders.from_vscode").lazy_load()
    end

    -- install jsregexp (optional!).
    -- build = "make install_jsregexp"

}
