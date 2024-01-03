-- https://github.com/nvim-treesitter/nvim-treesitter
local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

configs.setup {
  ensure_installed = { "c", "cpp", "cmake", "python", "rust" },
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
