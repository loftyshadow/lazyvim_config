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
    log_level = "trace",
    log_to_file = true,
    filesystem = {
      find_command = "fd",
      find_args = {
        fd = {
          "--exclude",
          ".git",
          "--exclude",
          "node_modules",
        },
      },
      find_by_full_path_words = false,
    },
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
        ["[c"] = "prev_git_modified",
        ["]c"] = "next_git_modified",
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
