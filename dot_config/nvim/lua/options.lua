local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- globals -----------------------------------------
-- g.toggle_theme_icon = "   "

-------------------------------------- options ------------------------------------------
o.number = true
o.wrap = false
o.wrapscan = false -- search don't wrap
o.ignorecase = true -- search ignore case
o.colorcolumn = "80"  -- draw char limit line 
o.relativenumber = true -- line numbers relative to the current one
	    
o.shiftwidth = 4 -- hitting Tab insets 4 spaces
o.tabstop = 8 -- Tab character in file is represented by 8 spaces
o.softtabstop = 0 -- do not mix Tabs with spaces in insert mode
o.smarttab = true -- use above settings
o.expandtab = true -- use spaces to insert Tabs in insert mode

-------------------------------------- cmds exec ------------------------------------------

vim.cmd.colorscheme("tokyonight")
