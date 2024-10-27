return {
  { -- Run tests such as xunit etc
    'vim-test/vim-test',
    keys = {
      { '<leader>tn', '<cmd>TestNearest<cr>', desc = '[T]est [N]earest' },
      { '<leader>tf', '<cmd>TestFile<cr>', desc = '[T]est [F]ile' },
      { '<leader>ta', '<cmd>TestSuite<cr>', desc = '[T]est [A]ll' },
      { '<leader>tl', '<cmd>TestLast<cr>', desc = '[T]est [L]ast' },
      { '<leader>tv', '<cmd>TestVisit<cr>', desc = '[T]est [V]isit' },
    },
  },
  {
    'preservim/vimux',
    enabled = function()
      return vim.loop.os_uname().sysname == 'Linux'
    end,
  },
}
