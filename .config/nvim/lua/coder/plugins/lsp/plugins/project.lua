-- import project plugin safely
local setup, project = pcall(require, "project")
if not setup then
	return
end

project.setup({
	-- Methods of detecting the root directory. **"lsp"** uses the native neovim
	-- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
	-- order matters: if one is not detected, the other is used as fallback. You
	-- can also delete or rearangne the detection methods.
	detection_methods = { "lsp", "pattern" },

	-- All the patterns used to detect root dir, when **"pattern"** is in
	-- detection_methods
	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".idea", ".vscode" },

	-- Show hidden files in telescope
	show_hidden = false,
})
