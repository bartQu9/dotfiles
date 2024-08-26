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
o.colorcolumn = 80  -- draw char limit line 
o.relativenumber = true -- line numbers relative to the current one

-------------------------------------- cmds exec ------------------------------------------

vim.cmd.colorscheme("tokyonight")
