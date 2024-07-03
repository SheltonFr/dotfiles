vim.g.mapleader = " "

local keymap = vim.keymap

-- That fancy VSCode feature for moving lines around (credits to @ThePrimeagen)
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Set cursor to center when scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")
-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>")
keymap.set("n", "<leader>qf", ":cfirst<CR>")
keymap.set("n", "<leader>qn", ":cnext<CR>")
keymap.set("n", "<leader>qp", ":cprev<CR>")
keymap.set("n", "<leader>ql", ":clast<CR>")
keymap.set("n", "<leader>qc", ":cclose<CR>")

-- Nvim-tree
keymap.set("n", "\\", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>")
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>")

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').git_files, {})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})

-- LSP
keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
keymap.set('n', '<leader>rr', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>gf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set('n', '<leader>ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')

-- Git blame
keymap.set('n', '<leader>gb', ':GitBlameToggle<CR>')

-- Copy to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]])


-- That fucking GoLang error handling
-- keymap.set(
--     "n",
--     "<leader>ee",
--     "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )
