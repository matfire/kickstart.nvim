return {
  'voldikss/vim-floaterm',
  keys = function()
    print 'custom/configs/floatterm.lua'
    -- vim.keymap.set('n', '<leader>g', '<cmd>FloatermNew lazygit<CR>', { desc = 'LazyGit' })
    -- vim.keymap.set('n', '<leader>t', '<cmd>FloatermNew lazydocker<CR>', { noremap = true, silent = true })
    local _keys = {
      {
        '<leader>g',
        ':FloatermNew lazygit<CR>',
        desc = 'LazyGit',
      },
    }
    return _keys
  end,
}
