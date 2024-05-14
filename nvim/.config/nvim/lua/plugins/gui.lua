return {
  {
    "morhetz/gruvbox",
    config = function()
      vim.cmd.colorscheme("gruvbox")
      vim.opt.background = "dark"
      vim.cmd.highlight({"Normal", "guibg=NONE", "ctermbg=NONE"})
    end
  },
  "voldikss/vim-floaterm",
  "mhinz/vim-startify",
}
