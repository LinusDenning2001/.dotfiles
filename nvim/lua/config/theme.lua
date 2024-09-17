return {
	"morhetz/gruvbox",
	lazy = false,
	priority = 1000, -- Make sure to load this before all the other start plugins.

	config = function()
		vim.cmd.colorscheme("gruvbox")

		vim.cmd.hi("TreesitterContext guibg=bg")
	end,
}
