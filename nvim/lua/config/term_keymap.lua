-- Enable hidden buffers
vim.o.hidden = true

local term_buf = nil
local term_win = nil

function ToggleTerminal()
	if term_win and vim.api.nvim_win_is_valid(term_win) then
		-- Hide the window instead of closing
		vim.api.nvim_win_close(term_win, false)
		term_win = nil
	else
		if not term_buf or not vim.api.nvim_buf_is_valid(term_buf) then
			-- Create new terminal buffer
			vim.cmd("botright 10sp term://$SHELL")
			term_buf = vim.api.nvim_get_current_buf()
			vim.wo.number = false
			vim.wo.relativenumber = false
		else
			-- Reuse existing buffer
			vim.cmd("botright 10sp")
			vim.cmd("buffer " .. term_buf)
		end
		term_win = vim.api.nvim_get_current_win()
		vim.cmd("startinsert!")
	end
end

vim.keymap.set("n", "<leader>t", ToggleTerminal, { silent = true })
vim.keymap.set("t", "<leader>t", [[<C-\><C-n>:lua ToggleTerminal()<CR>]], { silent = true })
