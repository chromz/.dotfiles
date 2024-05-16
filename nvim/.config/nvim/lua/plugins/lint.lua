return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      typescript = { 'eslint', }
    }
    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "BufWinEnter" }, {
        callback = function()
          lint.try_lint()
        end,
      })
  end
}
