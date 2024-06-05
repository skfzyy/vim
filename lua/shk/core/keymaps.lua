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
keymap.set("n", "<space>c", ":<C-u>CocList commands<cr>")

--dap
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader><F5>', function() require('dap').terminate() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()require('dap.ui.widgets').hover()end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()require('dap.ui.widgets').preview()end)
vim.keymap.set('n', '<Leader>df', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.frames)
    end)
vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)

