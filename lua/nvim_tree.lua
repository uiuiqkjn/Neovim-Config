require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
    adaptive_size = true, -- ✅ 自动适应当前窗口大小
  },

  update_focused_file = {
    enable = true,
    update_cwd = true,
  },

  renderer = {
    icons = {
      webdev_colors = true,
      show = {
        git = true,
        folder = true,
        folder_arrow = true,
        file = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },

  filters = {
    dotfiles = false,
    custom = {},
  },
})

-- 设置快捷键来打开文件树
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

