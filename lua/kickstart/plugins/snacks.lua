-- vim.keymap.set('n', '<leader>ot', vim.cmd.snacks.terminal.toggle())
return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  opts = {
    terminal = { enabled = true },
  },
  keys = {
    {
      '<c-/>',
      function()
        require('snacks').terminal()
      end,
      desc = 'Toggle terminal',
    },
  },
}
