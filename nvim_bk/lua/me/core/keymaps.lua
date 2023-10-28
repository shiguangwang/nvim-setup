-- set leader key to SPC
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>", { desc = "use jj to exit INS mode" })
keymap.set("i", "<C-A>", "<HOME>", { desc = "use C-A to go HOME" })
keymap.set("i", "<C-E>", "<END>", { desc = "use C-E to go END" })

keymap.set("n", "U", "C-R", { desc = "use U to undo" })
keymap.set("n", "K", "i<CR><ESC>", { desc = "use K to break line" })
