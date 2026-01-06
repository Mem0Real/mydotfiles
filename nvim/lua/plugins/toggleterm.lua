return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		--open_mapping = [[<c-j>]],
		open_mapping = [[<leader>t]],
		direction = "horizontal",
		close_on_exit = false,
		shell = vim.o.shell,
	},
}
