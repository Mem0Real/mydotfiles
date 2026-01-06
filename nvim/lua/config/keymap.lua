vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", {
	desc = "Open Parent Directory in Oil",
})

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, {
	desc = "Open Diagnostics in Float",
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.keymap.set("n", "<A-t>", function()
	require("conform").format()
end, { desc = "Format current file" })

-- Map Ctrl+c to escape (a common alternative to the physical Escape key)
vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })

-- Move current line or visual selection up/down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { silent = true, desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { silent = true, desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { silent = true, desc = "Move block down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { silent = true, desc = "Move block up" })
