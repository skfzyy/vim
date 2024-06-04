vim.g.mapleader=" "



local keymap=vim.keymap
keymap.set("n","<leader>e",":NvimTreeToggle<cr>")

keymap.set("n","<leader>ff","<cmd>Telescope find_files<cr>")
keymap.set("n","<leader>fs","<cmd>Telescope live_grep<cr>")


-- set window jump
keymap.set("n","<leader>ww","<C-w>k")
keymap.set("n","<leader>ws","<C-w>j")
keymap.set("n","<leader>wa","<C-w>h")
keymap.set("n","<leader>wd","<C-w>l")

--set hop
keymap.set("n","<leader>hw",":HopWord<cr>")
keymap.set("n","<leader>hww",":HopWordMW<cr>")
keymap.set("n","<leader>hc",":HopChar2<cr>")
keymap.set("n","<leader>hcc",":HopCharMW2<cr>")


-- max

keymap.set("n","<leader>mm",":MaximizerToggle<cr>")
