return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "close others" },
    { "<leader>[b", "<Cmd>BufferLineCyclePrev<<CR>", desc = "prev buffer" },
    { "<leader>]b", "<Cmd>BfferLineCycleNext<CR>", desc = "next buffer" },
    { "<leader>bg", "<Cmd>BufferLinePick<CR>", desc = "pick buffer" },
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
  },
  opts = {
    options = {
      separator_style = "slant",
      max_name_length = 12,
    },
  },
}
