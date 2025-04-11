local lspconfig = require("lspconfig")

-- Python LSP
lspconfig.pyright.setup({})

-- Lua LSP
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})

-- C/C++ LSP
lspconfig.clangd.setup({
  -- 确保 clangd 正常工作并与 nvim-cmp 联动
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

-- 自动补全
local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
})

