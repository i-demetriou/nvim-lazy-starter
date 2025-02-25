-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- Split resizing
map({ "n" }, "<leader>+", function()
  vim.cmd("vertical resize " .. vim.fn.winwidth(0) * 3 / 2)
end, { desc = "Increase split size to 2/3 of window" })
map({ "n" }, "<leader>-", function()
  vim.cmd("vertical resize " .. vim.fn.winwidth(0) * 2 / 3)
end, { desc = "Increase split size to 2/3 of window" })
