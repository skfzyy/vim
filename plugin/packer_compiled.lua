-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\SHENHA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\SHENHA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\SHENHA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\SHENHA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\SHENHA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  indentLine = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-nio"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-nio",
    url = "https://github.com/nvim-neotest/nvim-nio"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  tagbar = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-cpp-enhanced-highlight"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-cpp-enhanced-highlight",
    url = "https://github.com/octol/vim-cpp-enhanced-highlight"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "C:\\Users\\shenhangke\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
