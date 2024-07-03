return {
  -- 'catppuccin/nvim',
  'sainnhe/gruvbox-material',
  -- 'folke/tokyonight.nvim',
  -- 'rose-pine/neovim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_transparent_background = 2
    vim.cmd.colorscheme 'gruvbox-material'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
