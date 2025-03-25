-- Highlight todo, notes, etc in comments
return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    {
      '<leader>st',
      function()
        Snacks.picker.todo_comments()
      end,
      desc = 'Todo Comments',
    },
    {
      '<leader>sT',
      function()
        Snacks.picker.todo_comments { keywords = { 'TODO', 'FIX', 'FIXME' } }
      end,
      desc = 'Todo/Fix/Fixme',
    },
  },

  -- event = 'VimEnter',
  -- dependencies = { 'nvim-lua/plenary.nvim' },
  -- opts = { signs = false },
}
