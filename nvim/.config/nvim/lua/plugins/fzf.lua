return {
  'ibhagwan/fzf-lua',
  config = function()
    local fzf = require('fzf-lua')
    fzf.setup({
      grep = {
        rg_opts = "--column --hidden --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",
      },
    })
    vim.keymap.set('n', '<C-p>', function()
      fzf.files()
    end, {})
    vim.keymap.set('n', '<leader>a', function()
      fzf.live_grep()
    end, {})
    vim.keymap.set('n', '<leader>p', function()
      fzf.buffers()
    end, {})
  end
}
