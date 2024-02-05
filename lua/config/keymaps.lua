-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local mappings = {
  ----------------insert mode--------------
  -- jk map to <Esc>
  { from = "jk", to = "<Esc>", mode = "i" },
  -- ctrl + s map to save
  { from = "<C-s>", to = "<Esc>:w<CR>", mode = "i" },

  -----------------view mode---------------
  -- move mulite lines
  { from = "J", to = ">+1<CR>gv=gv", mode = "v" },
  { from = "K", to = "<-2<CR>gv=gv", mode = "v" },
  -- x do not yank
  { from = "x", to = "_x", mode = "v" },

  -----------------normal mode -----------------
  -- cancel highlight
  { from = "<leader>nh", to = ":nohl<CR>", mode = "n" },
  -- save
  { from = "<C-s>", to = ":w<CR>", mode = "n" },
  -- select all
  { from = "<C-a>", to = "ggVG", mode = "n" },
}

local option = {
  noremap = ture,
  silent = ture,
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.option or option)
end
