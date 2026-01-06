return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	opts = {
		ensure_installed = {
			'lua', 'vim', 'bash', 'html', 'css', 'javascript', 'rust', 'gdscript', 'c_sharp', 'cpp'
		},
	},
	highlight = { 
		enable = true,
		additional_vim_regex_highlighting = { 
			'gdscript',
			'c_sharp',
			'cpp',
		},
	},
	indent = { 
		enable = true
	},
}
