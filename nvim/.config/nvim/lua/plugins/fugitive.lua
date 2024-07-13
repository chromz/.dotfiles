return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>l", "<cmd>diffget //2<CR>")
    vim.keymap.set("n", "<leader>h", "<cmd>diffget //3<CR>")
  end
}
