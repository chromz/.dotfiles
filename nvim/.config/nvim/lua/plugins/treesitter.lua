return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'typescript', 'go', 'rust', 'bash', 'python', 'make'},

      sync_install = false,
      auto_install = true,
      ignore_install = { },
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 300 * 1024 -- 300 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
    }
    vim.opt.foldlevel = 20
    vim.api.nvim_create_autocmd({ "FileType" }, {
        callback = function()
          if require("nvim-treesitter.parsers").has_parser() then
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
          else
            vim.opt.foldmethod = "syntax"
          end
        end,
    })
  end
}
