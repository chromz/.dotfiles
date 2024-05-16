return {
  'ibhagwan/fzf-lua',
  config = function()
    local fzf = require('fzf-lua')
    fzf.setup()
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
