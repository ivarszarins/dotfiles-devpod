return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    --'folke/tokyonight.nvim',
    'catppuccin/nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      --vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.colorscheme 'catppuccin-macchiato'
      --vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          harpoon = true,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
    end,
  },
  -- {
  --   'maxmx03/solarized.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('solarized').setup {
  --       theme = 'neo',
  --     }
  --     vim.o.background = 'dark' -- or 'light'
  --     --vim.cmd.colorscheme 'solarized'
  --   end,
  -- },
}
