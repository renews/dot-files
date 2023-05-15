-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install, configure at lspconfig.lua
	ensure_installed = {
		"tsserver",
		"bashls",
		"html",
		"cssls",
		"cssmodules_ls",
		"tailwindcss",
		"svelte",
		"jsonls",
		"marksman",
		"sumneko_lua",
		"crystalline",
		"denols",
		"elixirls",
		"erlangls",
		"elmls",
		"gopls",
		"ruby_ls",
		"rust_analyzer",
		"solargraph",
		"sqls",
		"sourcery",
		"terraformls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"jq", -- json
		"hadolint", -- dockerfile
		"erb_lint", -- eruby
		"standardrb", -- ruby
		"rubocop", -- ruby
		"pylint", -- python
		"write_good", -- markdown
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
