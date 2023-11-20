local keymap = vim.keymap
local opts =  { noremap = true, silent = true}

-- Dir navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts) 
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Pane navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle minimize 
keymap.set("n", "<leader>th", ":split | term<CR>", opts) -- Open terminal split horizontaly
keymap.set("n", "<leader>tv", ":vsplit | term<CR>", opts) -- Open terminal split horizontaly

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

