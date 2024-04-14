return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { "<C-n>", "<cmd>Telescope resume<cr>", desc = "Resume Popup" },
      { "<C-b>", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        pickers = {
          find_files = {
            follow = true,
          },
        },
        defaults = {
          mappings = {
            i = {
              ["<esc>"] = actions.close,
            },
          },
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
            },
          },
          sorting_strategy = "ascending",
        },
      })
    end,
  },
}
