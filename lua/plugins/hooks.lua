local hooks = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  vim.notify("PackChanged seen")

  -- If we need to modify packages on updates and isntalls
end

vim.api.nvim_create_autocmd("PackChanged", { callback = hooks })
