vim.opt.runtimepath:remove(vim.fn.expand('~/.config/nvim'))
vim.opt.packpath:remove(vim.fn.expand('~/.local/share/nvim/site'))

vim.opt.runtimepath:append(vim.fn.expand('/home/uwsl/nvim-new'))
vim.opt.packpath:append(vim.fn.expand('/home/uwsl/nvim-new'))

require("core")

if vim.g.vscode then
  -- VSCode extension
else
  require("plugins")
  -- ordinary Neovim
end

-- vim.cmd([[
--   hi NormalNC ctermbg=NONE guibg=NONE
--   highlight Normal guibg=none
--   highlight NonText guibg=none
--   highlight Normal ctermbg=none
--   highlight NonText ctermbg=none
-- ]])
