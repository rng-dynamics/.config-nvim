-- indent part 1/2
vim.cmd [[ filetype plugin indent on ]]
-- indent: Makefiles are different
vim.cmd [[
  augroup auto_indent_makefile
    autocmd!
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
  augroup end
]]

local options = {

  fileencoding = "utf-8",

  mouse = "a",

  hlsearch = true,
  ignorecase = true,
  smartcase = true,


  undofile = true,

  number = true,
  cursorline = true,

  termguicolors = true,

  -- indent part 2/2
  -- expandtab = true,
  -- shiftwidth = 2,
  -- tabstop = 2,
  tabstop = 4,      -- The width of a TAB is set to 4. Still it is a \t. It is just that
                    -- Vim will interpret it to be having a width of 4.
  shiftwidth = 4,   -- Indents will have a width of 4.
  softtabstop = 4,  -- Sets the number of columns for a TAB.
  expandtab = true, -- Expand TABs to spaces.

  wrap = false,           -- do not wrap lines
  -- use unnamed system clipboard ("ctrl-c ctrl-v") register by default
  clipboard = "unnamed",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
