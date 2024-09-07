local map = vim.keymap.set

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })



-- barbar

local map_barbar = vim.api.nvim_set_keymap
local opts_barbar = { noremap = true, silent = true }

-- Move to previous/next
map_barbar('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts_barbar)
map_barbar('n', '<A-.>', '<Cmd>BufferNext<CR>', opts_barbar)
-- Re-order to previous/next
map_barbar('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts_barbar)
map_barbar('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts_barbar)
-- Goto buffer in position...
map_barbar('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts_barbar)
map_barbar('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts_barbar)
map_barbar('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts_barbar)
map_barbar('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts_barbar)
map_barbar('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts_barbar)
map_barbar('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts_barbar)
map_barbar('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts_barbar)
map_barbar('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts_barbar)
map_barbar('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts_barbar)
map_barbar('n', '<A-0>', '<Cmd>BufferLast<CR>', opts_barbar)
-- Pin/unpin buffer
map_barbar('n', '<A-p>', '<Cmd>BufferPin<CR>', opts_barbar)
-- Close buffer
map_barbar('n', '<A-c>', '<Cmd>BufferClose<CR>', opts_barbar)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map_barbar('n', '<C-p>', '<Cmd>BufferPick<CR>', opts_barbar)
-- Sort automatically by...
--map_barbar('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts_barbar)
--map_barbar('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts_barbar)
--map_barbar('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts_barbar)
--map_barbar('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts_barbar)
--map_barbar('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts_barbar)
-- my custom
map_barbar('n', '<A-C>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts_barbar)
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used


--  telescope 
local builtin_telescope = require('telescope.builtin')
map('n', '<leader>f', builtin_telescope.find_files, {})
map('n', '<leader>F', function() require('telescope.builtin').find_files({follow=true, hidden=true, no_ignore=true, no_ignore_parent=true}) end, {})
map('n', '<leader>g', builtin_telescope.live_grep, {})
-- Telescope.nvim uses ripgrep (rg) to do the live grepping in its search. -L follows symlinks
map('n', '<leader>G', function() require('telescope.builtin').live_grep({additional_args={"--hidden", "--no-ignore", "-L"}}) end, {})
--map('n', '<leader>G', function() require('telescope.builtin').live_grep({follow=true, hidden=true, no_ignore=true, no_ignore_parent=true}) end, {})
--map('n', '<leader>fh', builtin_telescope.help_tags, {})
map('n', '<leader>b', builtin_telescope.buffers, {})
map('n', '<leader>o', builtin_telescope.lsp_document_symbols, {})
map('n', '<leader>t', builtin_telescope.lsp_dynamic_workspace_symbols, {})
map('n', '<leader>r', builtin_telescope.lsp_references, {})
map('n', '<leader>d', builtin_telescope.lsp_definitions, {})
map('n', '<leader>i', builtin_telescope.lsp_implementations, {})
map('n', '<leader>u', builtin_telescope.lsp_incoming_calls, {})
map('n', '<leader>U', builtin_telescope.lsp_outgoing_calls, {})

-- lspconfig clangd
map('n', '<leader><Tab>', '<Cmd>ClangdSwitchSourceHeader<CR>', {})

-- LuaSnip
-- local ls = require("luasnip")
--
-- map({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
-- map({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
-- map({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
--
-- map({"i", "s"}, "<C-E>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	end
-- end, {silent = true})



