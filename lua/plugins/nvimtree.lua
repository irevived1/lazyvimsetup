return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        window = {
          mappings = {
            ["/"] = "noop",
            ["<C-x>"] = "open_split",
            ["<C-v>"] = "open_vsplit",
          },
          width = 34,
        },
      },
    },
  },
}
