local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

local lualine_theme = require("lualine.themes.gruvbox_dark")

lualine.setup({
	options = {
		theme = lualine_theme,
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { "filename" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "searchcount" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = { "progress" },
			lualine_z = {},
		},
	},
})
