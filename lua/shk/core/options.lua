-- transparents
vim.api.nvim_set_hl(0,'Normal',{bg=nil,ctermbg=nil})

local opt=vim.opt
opt.number= true
opt.relativenumber=true

opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true

opt.splitright=true
opt.clipboard:append("unnamedplus")
