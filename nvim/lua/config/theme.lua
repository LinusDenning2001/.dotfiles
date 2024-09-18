return { -- load with lazy
	"morhetz/gruvbox",
	lazy = false, -- ensures vim commands are excecuted after lazy
	priority = 1000, -- Make sure to load this before all the other start plugins.

	config = function()
		vim.cmd.colorscheme("gruvbox")

		-- highlught group commands
		vim.cmd.hi("TreesitterContext guibg=bg")
	end,
}
