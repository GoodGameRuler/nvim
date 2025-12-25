local vim = vim
vim.pack.add({
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/nvim-mini/mini.completion',
})
require("plugins/language/lsp")
require("plugins/language/pkg-mgr")
require("plugins/language/complete")
