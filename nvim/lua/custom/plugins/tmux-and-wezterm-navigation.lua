return {
  {
    'alexghergh/nvim-tmux-navigation',
    enabled = function()
      return vim.loop.os_uname().sysname == 'Linux'
    end,
    config = function()
      if vim.loop.os_uname().sysname == 'Linux' then
        require('nvim-tmux-navigation').setup {
          disable_when_zoomed = true,
          keybindings = {
            left = '<C-h>',
            down = '<C-j>',
            up = '<C-k>',
            right = '<C-l>',
            last_active = '<C-\\>',
            next = '<C-Space>',
          },
        }
      end
    end,
  },
}
