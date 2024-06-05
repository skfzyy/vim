local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugin-setup.lua source <afile> | PackerSync
  augroup end
]])


return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
    },
  }
--   use {
--     "windwp/nvim-autopairs",
--     event = "InsertEnter",
--     config = function()
--         require("nvim-autopairs").setup {}
--     end
-- }


use 'folke/tokyonight.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
use {
  'phaazon/hop.nvim',
  branch = 'v2', -- optional but strongly recommended
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}
use 'szw/vim-maximizer'
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use 'Yggdroot/indentLine'

use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'
use 'preservim/tagbar'
use 'octol/vim-cpp-enhanced-highlight'

use {'neoclide/coc.nvim', branch = 'release'}

use 'mfussenegger/nvim-dap'
use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
