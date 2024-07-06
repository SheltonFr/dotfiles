vim.g.mapleader = " "
local keymap = vim.keymap

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- That fancy VSCode feature for moving lines around (credits to @ThePrimeagen)
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Set cursor to center when scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Better window navigation
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", ":wincmd j<cr>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", ":wincmd k<cr>", { desc = "Move focus to the upper window" })

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open New Tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" })

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "Open Quiclfix List" })
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "First Item" })
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Next Item" })
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Previous Item" })
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "Last Item" })
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "Close Quiclfix List" })

-- Nvim-tree
keymap.set("n", "\\", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Explorer" })

-- Telescope
keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
keymap.set('n', '<leader>fs', require('telescope.builtin').live_grep, {})
keymap.set('n', '<leader>fg', require('telescope.builtin').git_files, {})
keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})

-- LSP
-- keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
-- keymap.set('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
-- keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
-- keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
-- keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.rename()<CR>')
-- keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
-- keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
-- keymap.set('n', '<leader>gl', '<cmd>lua vim.diagnostic.open_float()<CR>')
-- keymap.set('n', '<leader>gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
-- keymap.set('n', '<leader>gn', '<cmd>lua vim.diagnostic.goto_next()<CR>')
-- keymap.set('n', '<leader>tr', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

keymap.set('i', '<C-Space>', '<cmd>lua vim.lsp.buf.completion()<CR>')
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Documentation" })
keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })
keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
keymap.set('n', '<leader>cf', '<cmd>lua vim.lsp.buf.format({async = true})<CR>', { desc = "[C]ode [F]ormat" })
keymap.set(
  "n",
  "<leader>cr",
  require("telescope.builtin").lsp_references,
  { desc = "[C]ode Goto [R]eferences" }
)
keymap.set(
  "n",
  "<leader>ci",
  require("telescope.builtin").lsp_implementations,
  { desc = "[C]ode Goto [I]mplementations" }
)
keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })

-- DAP
vim.keymap.set("n", "<leader>dt", require('dap').toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })
vim.keymap.set("n", "<leader>ds", require('dap').continue, { desc = "[D]ebug [S]tart" })
vim.keymap.set("n", "<leader>dc", require('dapui').close, { desc = "[D]ebug [C]lose" })

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
