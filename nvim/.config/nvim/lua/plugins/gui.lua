return {
  {
    "morhetz/gruvbox",
    config = function()
      vim.cmd.colorscheme("gruvbox")
      vim.opt.background = "dark"
      vim.cmd([[
        hi Comment gui=italic cterm=italic
        hi Normal guibg=NONE ctermbg=NONE
        hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
        match ExtraWhitespace /\s\+\%#\@<!$/
        ]])

    end
  },
  "voldikss/vim-floaterm",
  "mhinz/vim-startify",
}
