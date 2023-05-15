-- check if colorscheme is installed to prevent errors
local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Gruvbox colorscheme not found!")
  return
end
