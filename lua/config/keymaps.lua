-- LSP DIAGNISTICS HELPERS 
-- [d jumps to next
-- ]d jumpt to prev
-- [D jumps to last in buffer
-- ]D jumps to first in buffer
-- <C-w>d shows diagnostic at cursor in a floating window

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "n", "nzzzv") -- Keeps cursor centered when searching
vim.keymap.set("n", "N", "Nzzzv") -- Keeps cursor centered when searching

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ'z") -- Takes the line below and appends to current without moving cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Half page jumping with cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Half page jumping with cursor centered
vim.keymap.set("n", "<leader>p", "\"_dP") -- Delete highlighted word into void register

vim.keymap.set("n", "Y", "yg$") -- Yank to end of line without \n
vim.keymap.set("n", "<leader>y", "\"+y") -- Yanks to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y") -- Yanks to system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y") -- Yanks to system clipboard 

vim.keymap.set("n", "<leader>d", "\"+_d") -- Deletes to void
vim.keymap.set("v", "<leader>d", "\"+_d") -- Deletes to void

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<Q>", "<nop>") -- "Dont ever press Q, its the worst place in the universe"
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- Not working, should take me to advent mode something


-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- Quick fix navigation
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- Quick fix navigation
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- Quick fix navigation
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- Quick fix navigation


vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- Replace the word on in the whole file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true}) -- Makes file executable
