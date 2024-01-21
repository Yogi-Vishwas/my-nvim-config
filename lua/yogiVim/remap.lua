vim.g.mapleader = " "                         -- set SPACE as leader key
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open up Explore (file tree)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- similar to vsc Alt + down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- similar to vsc Alt + up

vim.keymap.set("n", "J", "mzJ`z")             -- Append line below it with a space but don't move the cursor to the end
-- These two keeps the cursor in the middle while half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- These two keeps the cursor in the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]]) -- keeps the copy buffer preserved

-- Copy the text to the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Discards the deleted test and not store in the normal register or system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
