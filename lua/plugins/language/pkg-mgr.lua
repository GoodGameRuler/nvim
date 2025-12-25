local mason = require("mason")

-- enable mason and configure icons
mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

local keymap = vim.keymap
keymap.set("n", "<leader>ma", ":Mason<CR>", { desc = "Open Mason" })
