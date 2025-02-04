return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  requires = { { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' } },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<C-e>', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon window' })
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', 'C-d', function()
      harpoon:list():remove()
    end)
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-j>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-k>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-l>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-;>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}

-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   config = function()
--     local harpoon = require 'harpoon'
--     ---@diagnostic disable-next-line: missing-parameter
--     harpoon:setup()
--     local function map(lhs, rhs, opts)
--       vim.keymap.set('n', lhs, rhs, opts or {})
--     end
--     map('<leader>a', function()
--       harpoon:list():append()
--     end)
--     map('<leader>h', function()
--       harpoon.ui:toggle_quick_menu(harpoon:list())
--     end)
--     map('<c-h><c-h>', function()
--       harpoon:list():select(1)
--     end)
--     map('<c-h><c-j>', function()
--       harpoon:list():select(2)
--     end)
--     map('<c-h><c-k>', function()
--       harpoon:list():select(3)
--     end)
--     map('<c-h><c-l>', function()
--       harpoon:list():select(4)
--     end)
--   end,
-- }
