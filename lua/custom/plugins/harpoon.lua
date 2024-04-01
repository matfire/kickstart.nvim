return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('harpoon').setup()
  end,
  keys = function()
    local keys = {
      {
        '<leader>ha',
        function()
          require('harpoon'):list():append()
        end,
        desc = '[H]arpoon Add file',
      },
      {
        '<leader>hx',
        function()
          local harpoon = require 'harpoon'
          harpoon:list():remove()
        end,
        desc = '[H]arpoon Remove File',
      },
      {
        '<leader>hd',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = '[H]arpoon Display Quick Menu',
      },
    }
    for i = 1, 5 do
      table.insert(keys, {
        '<leader>' .. i,
        function()
          require('harpoon'):list():select(i)
        end,
        desc = 'Harpoon to File ' .. i,
      })
    end
    return keys
  end,
}
