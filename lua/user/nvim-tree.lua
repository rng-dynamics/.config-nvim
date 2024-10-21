-- https://github.com/kyazdani42/nvim-tree.lua

local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then
  return
end

nvim_tree.setup({
  view = {
    -- adaptive_size = true,
    preserve_window_proportions = true,
  },
  actions = {
    open_file = {
      resize_window = false,
    },
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★"
        },
        folder = {
            default = " ",
            open = " ",
            -- default = "",
            -- open = "",
            symlink = ""
        }
      }
    }
  }
})
