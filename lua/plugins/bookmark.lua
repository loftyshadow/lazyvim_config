return {
  "LintaoAmons/bookmarks.nvim",
  dependencies = {
    { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
  },
  config = function()
    require("bookmarks").setup({
      json_db_path = vim.fs.normalize("$HOME/AppData/Local/nvim-data/bookmarks/bookmarks.db.json"),
    })
    local keymap = vim.keymap

    vim.g.bookmark_highlight_lines = 1
    keymap.set("n", "ma", ":BookmarksGoto<cr>")
    keymap.set("n", "mg", ":BookmarksGotoRecent<cr>")
    keymap.set("n", "mc", ":BookmarksMark<cr>")
  end,
}
