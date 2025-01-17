local is_vanilla = not vim.g.vscode

if is_vanilla then
    require "vanilla"
else
    require "vscode_neovim"
end
