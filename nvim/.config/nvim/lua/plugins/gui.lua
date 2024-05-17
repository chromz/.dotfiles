return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
          options = {
            transparent = true,
          },
      })
      vim.cmd.colorscheme("terafox")
      vim.opt.background = "dark"
      vim.cmd([[
        hi Comment gui=italic cterm=italic
        hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
        match ExtraWhitespace /\s\+\%#\@<!$/
      ]])

    end
  },
  {
    "stevearc/oil.nvim",
    config = function()
      local oil = require("oil")
      oil.setup({
        float = {
          max_width = 100,
          max_height = 50,
        },
      })
      vim.keymap.set("n", "<C-n>", oil.toggle_float, { desc = "Open parent directory" })
    end
  },
  {
    "goolord/alpha-nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function ()
      local alpha = require("alpha")
      local theta = require("alpha.themes.theta")
      local dashboard = require("alpha.themes.dashboard")
      theta.header.val = {
        [[███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
        [[████╗  ██║██║   ██║██║████╗ ████║]],
        [[██╔██╗ ██║██║   ██║██║██╔████╔██║]],
        [[██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
        [[██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
        [[╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      }
      theta.buttons.val = {
        { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
        { type = "padding", val = 1 },
        dashboard.button("e", "  New file", "<cmd>ene<CR>"),
        dashboard.button("c", "  Configuration", "<cmd>cd ~/.config/nvim/ <CR>"),
        dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
        dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
      }
      alpha.setup(theta.config)
    end
  },
  "nvim-tree/nvim-web-devicons",
}
