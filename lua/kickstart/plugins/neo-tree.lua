-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

return {
  'nvim-neo-tree/neo-tree.nvim',
  event = 'VimEnter',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  lazy = 'false',
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_current',
      window = {
        mappings = {
          ['<leader>e'] = 'close_window',
        },
      },
    },
  },
}
