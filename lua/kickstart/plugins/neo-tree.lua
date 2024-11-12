-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype ~= 'neo-tree' and #vim.api.nvim_list_wins() > 1 then
      vim.cmd 'Neotree close'
    end
  end,
})

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
  lazy = false,
  opts = {
    close_if_last_window = true,
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
