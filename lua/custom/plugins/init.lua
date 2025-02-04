-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '-', vim.cmd.Oil, { desc = 'Open parent Directory' })
return {
  -- 'github/copilot.vim',
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
  },
  'ThePrimeagen/vim-be-good',
  'tpope/vim-fugitive',
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
