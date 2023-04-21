return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {},
      },
    },
    {
      "barreiroleo/ltex_extra.nvim",
      dependencies = { "neovim/nvim-lspconfig" },
    },
  },
}
