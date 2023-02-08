vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("", "<Space>", "<Nop>", opts)
-- this allows you to move highlighted text around with J, and K
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
--get out of insert mode
keymap('i', 'jk', '<ESC>', opts)
--get out of visuual mode
keymap('v', 'jkv', '<ESC>', opts)
-- move to end of line
keymap('n', '<leader>gl', 'g$', opts)
keymap('n', '<leader>gh', 'g0', opts)
--this jumps by half pages and keeps cursor in the middle
keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', '<C-d>', '<C-d>zz', opts)
--toggle open the filetree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>tt", ":NvimTreeToggle<cr>", opts)
--keymap("n", "<C-t>", "tabnew", opts)
keymap("n", "<leader>s", ":w<cr>", opts)
--move through open splits
keymap("n", "<C-h>", "<C-w><C-h>", opts)
keymap("n", "<C-j>", "<C-w><C-j>", opts)
keymap("n", "<C-k>", "<C-w><C-k>", opts)
keymap("n", "<C-l>", "<C-w><C-l>", opts)
--primagens keymaps
keymap("n", "Q", "<nop>", opts)
-- make a keymap that will open the copilot pannel
-- keep this one as a vim.kepmap.set function
vim.keymap.set("n", "<leader>cp", function()
    vim.cmd("Copilot panel")
end)

--Telescope Keymaps --
--keep this one as a vim.kepmap.set function
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Bufferline Keymaps --
keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)

keymap("n", "<leader>n", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<leader>cr", ":BufferLineCloseRight<CR>", opts)
keymap("n", "<leader>cl", ":BufferLineCloseLeft<CR>", opts)
