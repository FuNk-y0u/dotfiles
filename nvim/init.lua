require("funk")
print("Hello from init.lua")
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
vim.o.clipboard = "unnamedplus"
