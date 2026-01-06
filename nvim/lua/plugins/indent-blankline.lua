return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl", -- sets the main entry point for the plugin
	opts = {
		-- Basic configuration options go here in the 'opts' table
		indent = {
			char = "▏", -- Character to use for the indent lines
			tab_char = "▏",
		},
		whitespace = {
			remove_blankline_trail = false,
		},
		scope = {
			enabled = true, -- Highlights the current indentation scope
			show_start = true,
			show_end = true,
		},
		-- Other options can be found in the documentation :help ibl.config
	},
	config = function(_, opts)
		-- This function runs after the plugin is loaded and configured
		require("ibl").setup(opts)

		-- Optional: set up custom highlight groups in the config function
		-- This ensures highlights are correctly applied when the colorscheme changes
		vim.api.nvim_set_hl(0, "IblIndent", { fg = "#61AFEF" })
		vim.api.nvim_set_hl(0, "IblScope", { fg = "#C678DD" })
	end,
}

