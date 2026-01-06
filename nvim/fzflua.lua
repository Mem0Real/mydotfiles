return {
	"ibhagwan/fzf-lua",
	--dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	---@diagnostic enable: missing-fields
	keys = {
		{
			"<leader>f",
			desc="[F]ind",
		},
		{ 
			"<leader>ff",
			function() require('fzf-lua').files() end, 
			desc="[F]ile",
		},
		{
			"<leader>fw",
			function() require('fzf-lua').lgrep_curbuf() end,
			desc="Find word in current file",
		},
		{
			"<leader>fW",
			function() require('fzf-lua').live_grep() end,
			desc="Find word in all files",
		},
		{
			"<leader>b",
			function() require('fzf-lua').buffers() end,
			desc="[B]uffers",
		},
		{
			"<leader>ft",
			function() require('fzf-lua').tabs() end,
			desc="[T]abs",
		},
		{
			"<leader>fc",
			desc="[C]onfig",
		},
		{
			"<leader>fcn", 
			function() require('fzf-lua').files({cwd=vim.fn.stdpath("config")}) end,
			desc="[N]eovim ",
		},
		{
			"<leader>fch",
			function() require('fzf-lua').files({cwd="~/.config/hypr"}) end,
			desc="[Hypr]",
		},
		{
			"<leader>fz",
			function() require('fzf-lua').builtin() end,
			desc="[F]uzzy [C]ommands",
		},
		{
			"<leader>o",
			desc="[O]pen",
		},
		{
			"<leader>or",
			function() require('fzf-lua').oldfiles() end,
			desc="[R]ecent",
		},
	}
}
