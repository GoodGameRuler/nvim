local vim = vim
local ts_parsers = {
  "bash",
  "c",
  "dockerfile",
  "fish",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "go",
  "gomod",
  "gosum",
  "html",
  "javascript",
  "json",
  "lua",
  "make",
  "markdown",
  "python",
  "rust",
  "sql",
  "toml",
  "tsx",
  "typescript",
  "typst",
  "vim",
  "yaml",
  "zig",
}

local ts = require("nvim-treesitter")
ts.setup({})
ts.install(ts_parsers)
vim.api.nvim_create_autocmd('PackChanged', { callback = function() ts.update() end })

vim.api.nvim_create_autocmd("FileType", { -- enable treesitter highlighting and indents
  callback = function(args)
    local filetype = args.match
    local lang = vim.treesitter.language.get_lang(filetype)
    if vim.treesitter.language.add(lang) then
      vim.bo.indentexpr = "lua require('nvim-treesitter').indentexpr()"
      vim.treesitter.start()
    end
  end
})

