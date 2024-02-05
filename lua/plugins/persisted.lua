return {
  {
    "olimorris/persisted.nvim",
    keys = {
      { "<leader>Sf", "<cmd>Telescop persisted<cr>" },
      { "<leader>Ss", "<cmd>SessionSave<cr>" },
      { "<leader>Sd", "<cmd>SessionDelete<cr>" },
    },
    opts = {
      -- add your options that should be passed to the setup() function here
      autosave = false,
    },
  },
}
