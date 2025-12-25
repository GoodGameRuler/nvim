local fzf_lua = require("fzf-lua")
fzf_lua.setup({})

vim.keymap.set("n", "<leader>ff", fzf_lua.files)
vim.keymap.set("n", "<leader>fo", fzf_lua.oldfiles)
vim.keymap.set("n", "<leader>ftf", fzf_lua.git_files)
vim.keymap.set("n", "<leader>ftc", fzf_lua.git_commits)

vim.keymap.set("n", "<leader>gr", fzf_lua.lsp_references)
vim.keymap.set("n", "<leader>gd", fzf_lua.lsp_definitions)
vim.keymap.set("n", "<leader>gD", fzf_lua.lsp_declarations)
vim.keymap.set("n", "<leader>ca", fzf_lua.lsp_code_actions)
vim.keymap.set("n", "<leader>ge", fzf_lua.diagnostics_document)
vim.keymap.set("n", "<leader>gE", fzf_lua.diagnostics_workspace)

vim.keymap.set("n", "<leader>fgr", fzf_lua.grep)
vim.keymap.set("n", "<leader>fgl", fzf_lua.grep_last)
vim.keymap.set("v", "<leader>fgv", fzf_lua.grep_visual)
vim.keymap.set("n", "<leader>fgw", fzf_lua.grep_cword)
vim.keymap.set("n", "<leader>fgW", fzf_lua.grep_cWORD)

vim.keymap.set("n", "<leader>k", fzf_lua.manpages)
vim.keymap.set("n", "<leader>h", fzf_lua.helptags)
