return {
  -- Autoformat
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for specified file types
      local disable_filetypes = {
        c = true,
        cpp = true,
        zig = true,
        javascript = true,
        typescript = true,
        typescriptreact = true,
        javascriptreact = true,
      }
      local filetype = vim.bo[bufnr].filetype
      if disable_filetypes[filetype] then
        return false -- Disable formatting on save for these file types
      end
      return {
        timeout_ms = 500,
        lsp_fallback = true,
      }
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- You can use a sub-list to tell conform to run *until* a formatter is found
      typescriptreact = { { 'prettierd' } },
      typescript = { { 'prettierd' } },
      javascriptreact = { { 'prettierd' } },
      javascript = { { 'prettierd' } },
    },
  },
}
