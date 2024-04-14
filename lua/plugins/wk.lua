return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      triggers_blacklist = {
        i = { "d" },
        n = { "v", "d" },
      },
    },
    init = function()
      local wk = require("which-key")

      wk.register({
        w = { "<cmd>w<CR>", "Save" },
      }, { prefix = "<leader>" })
      -- local presets = require("which-key.plugins.presets")
      -- presets.operators["v"] = nil

      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
  },
}
