-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim

local status_ok, mason_tool_installer = pcall(require, "mason-tool-installer")
if not status_ok then
  return
end

mason_tool_installer.setup({

ensure_installed = {
    { "clangd", version = "18.1.3" },
    { "clang-format", version = "18.1.8" },
    "python-lsp-server",
    "lua-language-server",
    "cpplint",
    "luacheck",
}

})
