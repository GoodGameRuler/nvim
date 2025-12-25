vim.pack.add({
    'https://github.com/stevearc/oil.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/ibhagwan/fzf-lua',
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
    'https://github.com/nvim-treesitter/nvim-treesitter-context',
    -- 'https://github.com/nvim-telescope/telescope-ui-select.nvim',
    -- 'https://github.com/jonarrien/telescope-cmdline.nvim',
    -- 'https://github.com/rcarriga/nvim-notify',
})

require("plugins/navigation/file-browser")
require("plugins/navigation/fuzzy-finding")
