-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

local status_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not status_ok then
  return
end

mason_tool_installer.setup({

ensure_installed = {
    { "clangd", version = "19.1.2" },
    { "clang-format", version = "19.1.4" },
    "python-lsp-server",
    "lua-language-server",
    "cpplint",
    "luacheck",
}

})
