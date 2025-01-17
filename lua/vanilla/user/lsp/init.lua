local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "vanilla.user.lsp.mason"
require "vanilla.user.lsp.mason-tool-installer"
require("vanilla.user.lsp.handlers").setup()
