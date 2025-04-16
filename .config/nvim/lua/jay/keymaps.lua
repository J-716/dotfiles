local M = {}

-- Normal Mode --
vim.keymap.set("n", "<space>", "<nop>", { desc = "Disable space (leader) in normal mode" })

vim.keymap.set("n", "<C-/>", "<nop>")

-- Window and kitty navigation
vim.keymap.set("n", "<C-j>", function()
	if vim.fn.exists(":NvimTmuxNavigateDown") ~= 0 then
		vim.cmd.NvimTmuxNavigateDown()
	else
		vim.cmd.wincmd("j")
	end
end, { desc = "Navigate down (kitty navigation if available)" })

vim.keymap.set("n", "<C-k>", function()
	if vim.fn.exists(":NvimTmuxNavigateUp") ~= 0 then
		vim.cmd.NvimTmuxNavigateUp()
	else
		vim.cmd.wincmd("k")
	end
end, { desc = "Navigate up (kitty navigation if available)" })

vim.keymap.set("n", "<C-l>", function()
	if vim.fn.exists(":NvimTmuxNavigateRight") ~= 0 then
		vim.cmd.NvimTmuxNavigateRight()
	else
		vim.cmd.wincmd("l")
	end
end, { desc = "Navigate right (kitty navigation if available)" })

vim.keymap.set("n", "<C-h>", function()
	if vim.fn.exists(":NvimTmuxNavigateLeft") ~= 0 then
		vim.cmd.NvimTmuxNavigateLeft()
	else
		vim.cmd.wincmd("h")
	end
end, { desc = "Navigate left (kitty navigation if available)" })

-- Swap between last two buffers
vim.keymap.set("n", "<leader>", "<C-^>", { desc = "Swap between last two buffers" })

-- save and exist
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { silent = false, desc = "Save current buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { silent = false, desc = "Quit current buffer" })