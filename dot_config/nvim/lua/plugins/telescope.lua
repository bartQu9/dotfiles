return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    opts = {
        defaults = {
            sorting_strategy = 'ascending',
            layout_strategy = 'vertical',
            -- layout_strategy = 'horizontal',
            layout_config = {
                -- height = 0.95
                prompt_position = 'top',
                mirror = 1
            },
        },
    }

}
