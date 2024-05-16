return {
    "folke/trouble.nvim",
    branch = "dev",
    config = function()
      local trouble = require('trouble')

      vim.keymap.set("n", "<leader>tt", function()
        trouble.toggle("diagnostics")
      end)

      vim.keymap.set("n", "[t", function()
        trouble.next({skip_groups = true, jump = true});
      end)

      vim.keymap.set("n", "]t", function()
        trouble.prev({skip_groups = true, jump = true});
      end)

    end,
    opts = {},
}
