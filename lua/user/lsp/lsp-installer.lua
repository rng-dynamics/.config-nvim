-- https://github.com/williamboman/nvim-lsp-installer

local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

lsp_installer.setup {}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end



local common_opts = {
  on_attach = require("user.lsp.handlers").on_attach,
  capabilities = require("user.lsp.handlers").capabilities,
}

local pylsp_specific_opts = require("user.lsp.settings.pylsp")
local pylsp_opts = vim.tbl_deep_extend("force", pylsp_specific_opts, common_opts)
-- vim.pretty_print(pylsp_opts)
lspconfig.pylsp.setup(pylsp_opts)

local clangd_specific_opts = require("user.lsp.settings.clangd")
local clangd_opts = vim.tbl_deep_extend("force", clangd_specific_opts, common_opts)
-- vim.pretty_print(clangd_opts)
lspconfig.clangd.setup(clangd_opts)

local rust_analyzer_specific_opts = require("user.lsp.settings.rust-analyzer")
local rust_analyzer_opts = vim.tbl_deep_extend("force", rust_analyzer_specific_opts, common_opts)
-- vim.pretty_print(rust_analyzer_opts)
lspconfig.rust_analyzer.setup(rust_analyzer_opts)
