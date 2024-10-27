return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {
      'letieu/harpoon-lualine',
      {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
      },
    },
  },
  event = 'VimEnter',
  config = function()
    local catppuccin = require 'lualine.themes.catppuccin'
    -- catppuccin.normal.c.bg = '#5b6078'
    catppuccin.normal.c.bg = '#494d64'
    catppuccin.inactive.c.bg = '#494d64'
    require('lualine').setup {
      options = { theme = catppuccin },
      sections = {
        lualine_c = {
          { 'filename' },
          {
            'harpoon2',
            indicators = { '1', '2', '3', '4', '5', '6', '7', '8' },
            active_indicators = { '[1]', '[2]', '[3]', '[4]', '[5]', '[6]', '[7]', '[8]' },
          },
          {
            'macro-recording',
            fmt = function()
              local recording_register = vim.fn.reg_recording()
              if recording_register == '' then
                return ''
              else
                return 'Recording @' .. recording_register
              end
            end,
          },
        },
      },
    }
  end,
}
