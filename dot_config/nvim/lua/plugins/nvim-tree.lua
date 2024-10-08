return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
  
    filters = {
      dotfiles = false,
      git_ignored = false
    },
    disable_netrw = true,
    hijack_cursor = true,
    sync_root_with_cwd = false,
    update_focused_file = {
      enable = true,
      update_root = false,
    },
    view = {
      --width = 30,
      --preserve_window_proportions = true,
     -- float = {
     --   enable = true,
     --- },
    },
    tab = {
      sync = {
        open = true,
    	close = true,
      },
    },
    renderer = {
      root_folder_label = false,
      highlight_git = true,
      indent_markers = { enable = true },
      icons = {
        glyphs = {
          default = "󰈚",
          folder = {
            default = "",
            empty = "",
            empty_open = "",
            open = "",
            symlink = "",
          },
          git = { unmerged = "" },
        },
      },
    },
    actions = {
      change_dir = {
        global = true, -- use cd instead of lcd while entering dir in nvim-tree
      },
    },



  },
  --config = function()
  --  require("nvim-tree").setup {}
  --end,
}
