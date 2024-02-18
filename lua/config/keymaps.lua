-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<A-a>", "<ESC>A")
keymap.set("i", "<A-o>", "<ESC>o")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- x do not yank
keymap.set("v", "x", "_x")

-- ---------- 正常模式 ---------- ---
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

--  保存
keymap.set({ "n", "i" }, "<C-s>", "<Esc>:w<cr>")
-- select all
keymap.set("n", "<C-a>", "ggVG")

keymap.set("n", "G", "Gzz")
