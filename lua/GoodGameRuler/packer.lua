-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require('packer').startup(...)

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.1',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Colorscheme Rosepine
    use({
	    'rose-pine/neovim',
	    as = 'rose-pine',
	    config = function()
		    vim.cmd('colorscheme rose-pine')
	    end
    })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- 
    use('nvim-treesitter/playground')

    -- A plugin that lets you pin files globally
    use('ThePrimeagen/harpoon')

    -- Undotree shows undos and file historu
    use('mbbill/undotree')

    --
    use('tpope/vim-fugitive')

    -- LSP
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

    -- Surround plugin 
    use('tpope/vim-surround')

    -- Comments
    use('tpope/vim-commentary')

    -- Autocompletion of parenthesis
    use('cohama/lexima.vim')

    --  FML Plugin
    use('eandrju/cellular-automaton.nvim')

    -- Copilot Plugin
    -- use {
    --     "zbirenbaum/copilot.lua",
    --     cmd = "Copilot",
    --     event = "InsertEnter",
    --     config = function()
    --         require('copilot').setup({
    --             suggestion = { enabled = true},
    --             panel = { enabled = false },
    --         })
    --     end,
    -- }

    -- Adding copilot to the Autocomplete
    -- use {
    --     "zbirenbaum/copilot-cmp",
    --     after = { "copilot.lua" },
    --     config = function ()
    --         require("copilot_cmp").setup()
    --     end
    -- }

    -- Autocomplete Code
    use('hrsh7th/nvim-cmp')

    -- Vim Game to get better at vim
    use('ThePrimeagen/vim-be-good')

    -- Preview markdown files
    use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
    use('lambdalisue/suda.vim')

    -- R plugin for neovim
    use('jalvesaq/Nvim-R')

    -- Markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- Nord Theme
    use('shaunsingh/nord.nvim')

    -- Airline - Status Bar
    -- use('vim-airline/vim-airline')
    -- use('vim-airline/vim-airline-themes') -- Themes for airline

    -- Nerd Tree Alternative nvimtree
    use('nvim-tree/nvim-tree.lua')

    -- Icons
    use('nvim-tree/nvim-web-devicons')

    -- File lsp
    use('antosha417/nvim-lsp-file-operations')

    -- Lua Line - Status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }


    -- For md files
    use('lukas-reineke/headlines.nvim')

    -- require("packer").startup(
    -- function()
    --     use {
    --         'lukas-reineke/headlines.nvim',
    --         after = 'nvim-treesitter',
    --         config = function()
    --             require('headlines').setup()
    --         end,
    --     }
    -- end
    -- )

end)
