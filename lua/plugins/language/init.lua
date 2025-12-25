local vim = vim
vim.pack.add({
    'https://github.com/mason-org/mason.nvim',
})
require("plugins/language/lsp")
require("plugins/language/pkg-mgr")
