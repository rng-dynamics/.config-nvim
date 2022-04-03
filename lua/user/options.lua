local options = {

  fileencoding = "utf-8",

  mouse = "a",

  hlsearch = true,
  ignorecase = true,
  smartcase = true,

  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,

  undofile = true,

  number = true,
  cursorline = true,

  termguicolors = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

