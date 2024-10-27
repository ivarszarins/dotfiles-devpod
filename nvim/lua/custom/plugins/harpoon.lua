return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VimEnter',
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>hl', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Open harpoon window' })
      vim.keymap.set('n', '<leader>ha', function()
        harpoon:list():add()
      end, { desc = 'Harpoon add' })
      vim.keymap.set('n', '<leader>hr', function()
        harpoon:list():remove()
      end, { desc = 'Harpoon add' })
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon 1' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon 2' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon 3' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon 4' })
      vim.keymap.set('n', '<leader>5', function()
        harpoon:list():select(5)
      end, { desc = 'Harpoon 5' })
      vim.keymap.set('n', '<leader>6', function()
        harpoon:list():select(6)
      end, { desc = 'Harpoon 6' })
      vim.keymap.set('n', '<leader>7', function()
        harpoon:list():select(7)
      end, { desc = 'Harpoon 7' })
      vim.keymap.set('n', '<leader>8', function()
        harpoon:list():select(8)
      end, { desc = 'Harpoon 8' })
      vim.keymap.set('n', '<leader>9', function()
        harpoon:list():select(9)
      end, { desc = 'Harpoon 9' })
      vim.keymap.set('n', '[h', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', ']h', function()
        harpoon:list():next()
      end)
    end,
  },
}
