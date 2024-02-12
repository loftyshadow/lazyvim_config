return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>o",
      function()
        require("neo-tree.command").execute({ toggle = false, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
  opts = {
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(arg)
          vim.cmd([[
              setlocal relativenumber
            ]])
        end,
      },
    },
    window = {
      width = 28,
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
        ["[s"] = "prev_source",
        ["]s"] = "next_source",
      },
    },
    source_selector = {
      winbar = true, -- toggle to show selector on winbar
      sources = { -- table
        {
          source = "filesystem", -- string
          display_name = " 󰉓 Files ", -- string | nil
        },
        {
          source = "git_status", -- string
          display_name = " 󰊢 Git ", -- string | nil
        },
      },
    },
  },
}
