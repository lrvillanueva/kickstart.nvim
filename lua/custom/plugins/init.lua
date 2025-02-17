-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
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
}
