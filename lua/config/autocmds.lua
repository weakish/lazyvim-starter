-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- markdown
-- The structure is adapted from [robbyki]
-- [robbyki]: https://github.com/robbyki/dotfiles/blob/c38d0beac8cea3e07134d12f289aee834c02bd55/nvim/lua/plugins/neorg.lua#L75
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  -- put all my markdown autocmds in a group, thus I can enable/disable them easily
  group = vim.api.nvim_create_augroup("lazyvim_user_markdown", { clear = true }),
  pattern = { "*.md" },
  callback = function()
    -- LazyVim default value is 3, which hides conceal character (cchar).
    vim.opt.conceallevel = 2
    -- The regex is adapted from [disanman]:
    -- 1. Only need checked and unchecked boxes, since GFM only supports these two.
    -- 2. The implementation from disanman only supports `[X]`.
    --    This code also supports `[x]` for checked boxes.
    --    GFM supports both `[x]` and `[X]`.
    -- [disanman]: https://gist.github.com/huytd/668fc018b019fbc49fa1c09101363397?permalink_comment_id=3632149#gistcomment-3632149
    vim.cmd([[
    syntax match todoCheckbox '\v(\s+)?(-|\*)\s\[\s\]'hs=e-4 conceal cchar=
    syntax match todoCheckbox '\v(\s+)?(-|\*)\s\[(x|X)\]'hs=e-4 conceal cchar=
    ]])
  end,
})
