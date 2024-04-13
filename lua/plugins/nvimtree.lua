return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        filesystem = {
          window = {
            mappings = {
              ["/"] = "noop",
              ["<C-x>"] = "open_split",
              ["<C-v>"] = "open_vsplit",
            },
          },
        },
      })
    end,
  },
}
