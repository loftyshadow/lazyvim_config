-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local mappings = {
  ----------------insert mode--------------
  -- jk map to <Esc>
  { from = "jk", to = "<Esc>", mode = "i" },
  -- ctrl + s map to save
  { from = "<C-s>", to = "<Esc>:w<CR>", mode = "i" },
  -- add a new line
  { from = "<A-o>", to = "<Esc>o", mode = "i" },
  -- append at end
  { from = "<A-a>", to = "<Esc>A", mode = "i" },

  -----------------view mode---------------
  -- move mulite lines
  { from = "<A-S-j>", to = ":m '>+1<CR>gv=gv", mode = "v" },
  { from = "<A-S-k>", to = ":m '<-2<CR>gv=gv", mode = "v" },

  -----------------normal mode -----------------
  -- cancel highlight
  { from = "<leader>nh", to = ":nohl<CR>", mode = "n" },
  -- save
  { from = "<C-s>", to = ":w<CR>", mode = "n" },
  -- select all
  { from = "<C-a>", to = "ggVG", mode = "n" },
}

local option = {
  noremap = true,
  silent = true,
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.option or option)
end
