return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {}, -- markdown
      },
    },
    {
      "barreiroleo/ltex_extra.nvim", -- LanguageTool
      dependencies = { "neovim/nvim-lspconfig" },
    },
  },
}
