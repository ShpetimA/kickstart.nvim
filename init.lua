if vim.g.vscode then
  require 'custom/vscode_final'
else
  require 'custom/set'
  require 'custom/remap'
  require 'custom/terminal'
  require 'custom/lazy_init'

  vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
      vim.highlight.on_yank()
    end,
  })
end
