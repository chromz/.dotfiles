require("keymaps")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.encoding = "utf-8"
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
if vim.fn.exists("+termguicolors") then
  vim.opt.termguicolors = true
end
-- vim.opt.lcs = "nbsp:␣,trail:·,tab:\¦\ ,space:·"
vim.opt.hidden = true

vim.api.nvim_create_user_command('Yalo', ':0r ~/.config/nvim/yalo.txt', {})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
    install = {
      missing = true,
      coloscheme = { "gruvbox" }
    },
  })
