vim.keymap.set('n', '-', vim.cmd.Oil, { desc = 'Open parent Directory' })

return {
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        default_file_explorer = true,
        win_options = {
          signcolumn = 'yes:2',
        },
      }
    end,
    ---@module 'oil'
    -- ---@type oil.SetupOpts
    -- opts = {},
    -- dependencies = { { 'echasnovski/mini.nvim', opts = {} } },
  },
  {
    'refractalize/oil-git-status.nvim',
    dependencies = { 'stevearc/oil.nvim' },
    config = true,
  },
}
