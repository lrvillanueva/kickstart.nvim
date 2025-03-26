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
      '<leader>sg',
      function()
        Snacks.picker.grep()
      end,
      desc = '[S]earch by [G]rep',
    },
    {
      '<leader><space>',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Smart Find Files',
    },
    {
      '<leader>sd',
      function()
        Snacks.picker.diagnostics()
      end,
      desc = '[S]earch [D]iagnostics',
    },
    {
      '<leader>sb',
      function()
        Snacks.picker.buffers()
      end,
      desc = '[S]earch [B]uffers',
    },
    {
      '<leader>sh',
      function()
        Snacks.picker.help()
      end,
      desc = '[S]earch [H]elp Pages',
    },
  },
}
