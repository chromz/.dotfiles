return {
  {
    "morhetz/gruvbox",
    config = function()
      vim.cmd.colorscheme("gruvbox")
      vim.opt.background = "dark"
      vim.cmd([[
        hi Comment gui=italic cterm=italic
        hi! Normal ctermbg=NONE guibg=NONE

        hi ExtraWhitespace ctermbg=red guibg='#ffcf9e'
        match ExtraWhitespace /\s\+\%#\@<!$/
        ]])

    end
  },
  {
    "voldikss/vim-floaterm",
    config = function()
      vim.g.floaterm_opener = 'edit'
      vim.keymap.set("n", "<C-n>", ":FloatermNew nnn<CR>", { silent = true })
    end
  },
  "mhinz/vim-startify",
  "nvim-tree/nvim-web-devicons",
}
