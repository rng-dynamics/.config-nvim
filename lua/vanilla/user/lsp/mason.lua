-- https://github.com/williamboman/mason.nvim

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

mason.setup {}

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end



local common_opts = {
  on_attach = require("vanilla.user.lsp.handlers").on_attach,
  capabilities = require("vanilla.user.lsp.handlers").capabilities,
}

-- -- TODO: with Mason: has the name now changed from pylsp to python-lsp-server?
-- local pylsp_specific_opts = require("vanilla.user.lsp.settings.pylsp")
-- local pylsp_opts = vim.tbl_deep_extend("force", pylsp_specific_opts, common_opts)
-- -- vim.pretty_print(pylsp_opts)
-- lspconfig.pylsp.setup(pylsp_opts)

local clangd_specific_opts = require("vanilla.user.lsp.settings.clangd")
local clangd_opts = vim.tbl_deep_extend("force", clangd_specific_opts, common_opts)
-- vim.pretty_print(clangd_opts)
lspconfig.clangd.setup(clangd_opts)

local rust_analyzer_specific_opts = require("vanilla.user.lsp.settings.rust-analyzer")
local rust_analyzer_opts = vim.tbl_deep_extend("force", rust_analyzer_specific_opts, common_opts)
-- vim.pretty_print(rust_analyzer_opts)
lspconfig.rust_analyzer.setup(rust_analyzer_opts)
