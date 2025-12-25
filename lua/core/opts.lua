local o = vim.opt
local bo = vim.bo
o.nu = true
o.relativenumber = true

o.smartindent = true
o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.scrolloff = 8
vim.g.mapleader = " "

o.foldmethod = "syntax"
o.foldenable = false
o.foldlevel = 99

-- Error bars don't keep moving when not there
vim.o.signcolumn = "yes:3"

-- Spell Check
o.spelllang = "en_au"
o.spell = false

-- Local Leader
vim.g.maplocalleader = "\\"

-- LCS
-- o.listchars = {eol = '↵', trail = "_"}
-- o.list = true

-- Aesthetics
o.cursorline = true
o.cursorlineopt = "line,number"

o.list = true -- show trailing characters
o.backspace = "indent,eol,start"
o.colorcolumn = "100"
o.autocomplete = true
o.completeopt = { "fuzzy", "menu", "menuone", "noinsert", "popup", "preview" }
o.pumheight = 15
o.pumwidth = 20

o.wildmenu = true
o.wildmode = {"lastused", "full", "noselect"}   -- how entries are cycled
o.wildoptions = "pum"               -- show in popup menu
o.termguicolors = true

o.winborder = "rounded"
-- o.winborder='+,-,+,|,+,-,+,|'

require('vim._extui').enable({})

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'svelte', 'markdown', 'lua', 'rust', 'typescript', 'javascript', 'c', 'cpp', 'ocaml', 'tex', 'rust' },
	callback = function() vim.treesitter.start() end,
})
