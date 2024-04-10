return {
  'voldikss/vim-floaterm',
  keys = function()
    print 'custom/configs/floatterm.lua'
    -- vim.keymap.set('n', '<leader>g', '<cmd>FloatermNew lazygit<CR>', { desc = 'LazyGit' })
    -- vim.keymap.set('n', '<leader>t', '<cmd>FloatermNew lazydocker<CR>', { noremap = true, silent = true })
    local _keys = {
      {
        '<leader>tg',
        ':FloatermNew lazygit<CR>',
        desc = '[Terminal] LazyGit',
      },
      {
        '<leader>ts',
        ':FloatermNew spotify_player<CR>',
        desc = '[Terminal] Spotify TUI',
      },
    }
    return _keys
  end,
}
