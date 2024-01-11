local fn = vim.fn

local ensure_packer = function()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}
-- Packer automatically installs itself and other plugins
return packer.startup(function(use)
    use {'wbthomason/packer.nvim'}
    use 'vimwiki/vimwiki'
    use 'vim-test/vim-test'

    use 'tpope/vim-surround'

    use 'gelguy/wilder.nvim'

    use 'folke/zen-mode.nvim'

    use 'nvim-lua/plenary.nvim'

    use 'vim-scripts/phpcs.vim'

    use 'neovim/nvim-lspconfig'

    use 'romgrk/fzy-lua-native'

    use 'stevearc/dressing.nvim'

    use 'akinsho/toggleterm.nvim'

    use 'williamboman/mason.nvim'

    use 'vim-airline/vim-airline'

    use 'roxma/vim-hug-neovim-rpc'

    use 'xuhdev/vim-latex-live-preview'

    use 'vim-airline/vim-airline-themes'

    use 'nvim-treesitter/nvim-treesitter'

    use 'jose-elias-alvarez/null-ls.nvim'

    use 'williamboman/mason-lspconfig.nvim'

    use 'lukas-reineke/indent-blankline.nvim'

    use 'nvim-treesitter/nvim-treesitter-context'

    use {'neoclide/coc.nvim', branch = 'release'}

    use {'folke/tokyonight.nvim', branch = 'main' }

    use {'nvim-telescope/telescope.nvim', branch = '0.1.x'}

    use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

    use {'nvim-tree/nvim-web-devicons', tag = "*"}

    use {'ThePrimeagen/harpoon', branch = "harpoon2", requires = {{"nvim-lua/plenary.nvim"}} }

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use {'prettier/vim-prettier', run = 'npm install', ft = {'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html'}}

    use {"startup-nvim/startup.nvim",requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},

    config = function()
        require"startup".setup()
    end}

    if packer_bootstrap then
        require('packer').sync()
    end

    use({
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({
            disable_legacy_commands = true
            })
        end,
    })
end)
