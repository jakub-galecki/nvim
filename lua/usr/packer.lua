-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({ 
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine-main')
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'nvim-treesitter/playground'
    }


    use {
        'mbbill/undotree'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use { 'tpope/vim-fugitive' }
    use { 'embark-theme/vim', as = 'embark' }
    use { 'navarasu/onedark.nvim'}
    use { 'sainnhe/gruvbox-material' }
    use { 'airblade/vim-gitgutter' }
    use { 'APZelos/blamer.nvim' }
    use { 'marko-cerovac/material.nvim' }
    use { 'BurntSushi/ripgrep' }
    use { 'rebelot/kanagawa.nvim' } 
    use { 'lervag/vimtex' }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use { 'catppuccin/nvim' }
    use {
        "mcchrish/zenbones.nvim",
        requires = "rktjmp/lush.nvim"
    }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use { 'kvrohit/rasmus.nvim' }
    use { 'p00f/alabaster.nvim' }
    use { 'jaredgorski/Mies.vim' }
end)
