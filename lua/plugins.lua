local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 搜索 & 文件查找
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- 文件树
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- LSP 配置
  { "neovim/nvim-lspconfig" },

  -- 自动补全
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- 语法高亮
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- 自动括号补全插件
  { "windwp/nvim-autopairs", config = true },  

  -- 显示函数签名
  { "ray-x/lsp_signature.nvim", config = true },

  -- github copilot
  { "github/copilot.vim", event = "InsertEnter"},
})

require("nvim-tree").setup({})


