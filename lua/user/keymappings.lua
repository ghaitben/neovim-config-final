local options = { noremap = true, silent = true }

-- go to the beginning/end of the line with Ctrl + Arrow
vim.keymap.set("n", "<C-Left>", "^", options)
vim.keymap.set("n", "<C-Right>", "$", options)
vim.keymap.set("i", "<C-Left>", "<C-o>^", options)
vim.keymap.set("i", "<C-Right>", "<C-o>$", options)
vim.keymap.set("v", "<C-Left>", "^", options)
vim.keymap.set("v", "<C-Right>", "$", options)

vim.keymap.set("n", "<C-q>", "^", options)
vim.keymap.set("n", "<C-r>", "$", options)
vim.keymap.set("i", "<C-q>", "<C-o>^", options)
vim.keymap.set("i", "<C-r>", "<C-o>$", options)
vim.keymap.set("v", "<C-l>", "^", options)
vim.keymap.set("v", "<C-r>", "$", options)

vim.keymap.set("i", "<C-j>", "<C-o>j", options)
vim.keymap.set("i", "<C-k>", "<C-o>k", options)
vim.keymap.set("i", "<C-l>", "<C-o>l", options)
vim.keymap.set("i", "<C-h>", "<C-o>h", options)

-- fuzzy finder: show_files mappings
vim.keymap.set("i", "<C-f>", "<C-o>:FzfLua files cwd=~/<CR>", options)
vim.keymap.set("n", "<C-f>", ":FzfLua files cwd=~/<CR>", options)
vim.keymap.set("v", "<C-f>", ":FzfLua files cwd=~/<CR>", options)

-- fuzzy finder: show_buffers mappings
vim.keymap.set("i", "<C-b>", "<C-o>:FzfLua buffers<CR>", options)
vim.keymap.set("n", "<C-b>", ":FzfLua buffers<CR>", options)
vim.keymap.set("v", "<C-b>", ":FzfLua buffers<CR>", options)

-- LSP mappings
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", options)
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", options)
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", options)

-- nvimTree
vim.keymap.set("i", "<C-n>", "<C-o>:NvimTreeToggle<CR>", options)
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", options)
vim.keymap.set("v", "<C-n>", ":NvimTreeToggle<CR>", options)

-- close buffers
vim.keymap.set("i", "<C-c>", "<C-o>:Bdelete<CR>", options)
vim.keymap.set("n", "<C-c>", ":Bdelete<CR>", options)
vim.keymap.set("v", "<C-c>", ":Bdelete<CR>", options)

-- show diagnostics
vim.keymap.set("n", "<Leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", options)
vim.keymap.set("v", "<Leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", options)

-- format document
vim.keymap.set("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>", options)
vim.keymap.set("v", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>", options)

-- run leetcode.py
vim.keymap.set("n", "<Leader>r", ":!python3.9 leetcode.py<CR>", options)
vim.keymap.set("v", "<Leader>r", ":!python3.9 leetcode.py<CR>", options)

-- disable autocompletion for a file
vim.keymap.set("n", "<Leader>c", "<cmd>lua require('cmp').setup { enabled = false }<CR>", options)
vim.keymap.set("n", "<Leader>C", "<cmd>lua require('cmp').setup { enabled = true }<CR>", options)
