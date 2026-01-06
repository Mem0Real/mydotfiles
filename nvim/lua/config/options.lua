-- Manual Edits
vim.o.shiftwidth = 2 -- Amount to indent with << and >
vim.o.tabstop = 2 -- How many spaces shown per tab
vim.o.softtabstop = 2 -- How many spaces applied when tab is pressed

vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true

vim.o.cmdheight = 0 -- Disable commandline until its needed

-- Enable break indent
vim.o.breakindent = true

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.o.showmode = false

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default ==> CHANGED
--vim.o.signcolumn = 'yes'
vim.o.signcolumn = "no"

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.o.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- vim.opt.listchars = { tab = '|  ', trail = '·', nbsp = '␣' }
--
-- vim.opt.listchars = {
-- 	-- For files using actual TABS:
-- 	-- The space after the bar is important to preserve visual alignment
-- 	tab = '│ ',
--
-- 	-- For files using SPACES (VS Code style indent guides):
-- 	-- This repeats the pattern for every 'shiftwidth' of leading spaces
-- 	leadmultispace = '│   ',
--
-- 	-- Optional: show trailing spaces and non-breaking spaces
-- 	trail = '·',
-- 	nbsp = '␣',
-- }

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

-- [ Basic Autocommands ]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
