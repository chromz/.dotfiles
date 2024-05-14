vim.keymap.set("n", "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<C-n>", ":FloatermNew nnn<CR>", { silent = true })
vim.keymap.set("n", "<F5>", [[ :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR> ]], { silent = true })
vim.keymap.set("n", "<CR>", ":noh<CR><ESC>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("command! Bd :bp|:bd#")
