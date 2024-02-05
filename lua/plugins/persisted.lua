return {
  {
    "olimorris/persisted.nvim",
    keys = {
      { "<leader>Sf", "<cmd>Telescop persisted<cr>", desc = "find all session" },
      { "<leader>Ss", "<cmd>SessionSave<cr>", desc = "save current session" },
      { "<leader>Sd", "<cmd>SessionDelete<cr>", desc = "delete current session" },
    },
    opts = {
      -- add your options that should be passed to the setup() function here
      autosave = false,
    },
  },
}
