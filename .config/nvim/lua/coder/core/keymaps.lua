vim.g.mapleader = " "
local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>") -- exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights
keymap.set("n", "x", '"_x') -- delete a character but dont get the value in the buffer
keymap.set("c", "ac", "luafile %") -- apply current file config

-- numbers
keymap.set("n", "<leader>=", "<C-a>") -- number +1
keymap.set("n", "<leader>-", "<C-x>") -- number -1

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>p", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- lspsaga
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>") -- Code action
keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>") -- Rename

-- Peek Definition
-- you can edit the definition file in this flaotwindow
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>") -- Go to Definition

-- Show line diagnostics you can pass argument ++unfocus to make
-- show_line_diagnostics float window unfocus
keymap.set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
keymap.set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")
keymap.set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>") -- Show buffer diagnostic

-- Diagnostic jump can use `<c-o>` to jump back
keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Diagnostic jump with filter like Only jump to error
keymap.set("n", "[E", function()
	require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
keymap.set("n", "]E", function()
	require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end)

-- Toggle Outline
keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- if there has no hover will have a notify no information available
-- to disable it just Lspsaga hover_doc ++quiet
keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")

-- Callhierarchy
keymap.set("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
keymap.set("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Float terminal
keymap.set({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- nvim-terminal
keymap.set("t", "<esc>", [[<C-\><C-n>]]) -- exit terminal mode

-- projects
keymap.set("n", "<esc>", [[<C-\><C-n>]]) -- exit terminal mode
