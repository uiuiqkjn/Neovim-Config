require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "python", "bash", "json", "html", "css", "javascript", "c", "cpp" },
  highlight = {
    enable = true,              -- 启用高亮
    additional_vim_regex_highlighting = false, -- 关闭旧语法高亮以避免重复
  },
  indent = {
    enable = true               -- 启用基于语法的缩进（有些语言表现不稳定）
  },
})

