local keymap = vim.keymap
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

-- Yank to clipboard
-- keymap.set({ "n", "v" }, "<leader>y", '"+y')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tab movements
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Diagnostics
keymap.set("n", "<C-j>", function()
   vim.diagnostic.goto_next()
end, opts)
