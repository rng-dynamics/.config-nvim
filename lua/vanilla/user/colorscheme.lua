-- local colorscheme = "moonlight"
-- local colorscheme = "kanagawa"
-- local colorscheme = "tokyonight"
local colorscheme = "tokyonight-storm"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
