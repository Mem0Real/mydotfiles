return {
	"ibhagwan/fzf-lua",
	-- dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	---@diagnostic enable: missing-fields
	keys = {
		{
			"<leader>f",
			desc = "find",
		},
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "file",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "find word in current file",
		},
		{
			"<leader>fW",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "find word in all files",
		},
		{
			"<leader>b",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "buffers",
		},
		{
			"<leader>ft",
			function()
				require("fzf-lua").tabs()
			end,
			desc = "tabs",
		},
		{
			"<leader>fc",
			desc = "config",
		},
		{
			"<leader>fcn",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "neovim ",
		},
		{
			"<leader>fch",
			function()
				require("fzf-lua").files({ cwd = "~/.config/hypr" })
			end,
			desc = "hypr",
		},
		{
			"<leader>fz",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "fuzzy commands",
		},
		{
			"<leader>r",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "open recent",
		},
	},
}
