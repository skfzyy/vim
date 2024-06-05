local status,ntree=pcall(require,"nvim-tree")
if not status then
  return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
ntree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    adaptive_size=true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})