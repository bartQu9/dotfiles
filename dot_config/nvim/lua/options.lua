local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- globals -----------------------------------------
-- g.toggle_theme_icon = "   "

-------------------------------------- options ------------------------------------------

o.number = true
o.wrap = false
o.wrapscan = false -- search don't wrap

-------------------------------------- cmds exec ------------------------------------------

vim.cmd.colorscheme("tokyonight")
