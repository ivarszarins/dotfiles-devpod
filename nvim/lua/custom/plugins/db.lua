return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    keys = {
      { '<leader>db', '<cmd>DBUIToggle<CR>', { silent = true, desc = 'DBUIToggle' } },
      { '<leader>df', '<cmd>DBUIFindBuffer<CR>', { silent = true, desc = 'DBUIFindBuffer' } },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_winwidth = 30
      vim.g.db_ui_show_help = 0
      vim.g.db_ui_use_nvim_notify = 1
      vim.g.db_ui_win_position = 'left'

      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'dbui' },
        callback = function()
          vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<Plug>(DBUI_GotoFirstSibling)', {})
          vim.api.nvim_buf_set_keymap(0, 'n', 'J', '<Plug>(DBUI_GotoLastSibling)', {})

          -- restore original mappings
          vim.api.nvim_buf_set_keymap(0, 'n', '<C-j>', '<C-w><C-j>', {})
          vim.api.nvim_buf_set_keymap(0, 'n', '<C-k>', '<C-w><C-k>', {})
        end,
      })
    end,
  },
}
