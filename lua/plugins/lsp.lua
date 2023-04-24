return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {}, -- markdown
        denols = {
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
        }, -- Deno
      },
    },
    {
      "barreiroleo/ltex_extra.nvim", -- LanguageTool
      dependencies = { "neovim/nvim-lspconfig" },
    },
  },
}
