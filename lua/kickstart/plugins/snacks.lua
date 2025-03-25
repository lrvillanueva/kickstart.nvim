-- vim.keymap.set('n', '<leader>ot', vim.cmd.snacks.terminal.toggle())
return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  -- lazy = false,
  opts = {
    terminal = { enabled = true },
    indent = {},
    picker = {},
  },

  keys = {
    {
      '<c-/>',
      function()
        require('snacks').terminal()
      end,
      desc = 'Toggle terminal',
    },
    {
      '<leader>sG',
      function()
        Snacks.picker.grep()
      end,
      desc = '[S]earch by [G]rep',
    },
    -- {
    --   '<leader>sd',
    --   function()
    --     Snacks.picker.diagnostics()
    --   end,
    --   desc = '[S]earch [D]iagnostics',
    -- },
  },
}
