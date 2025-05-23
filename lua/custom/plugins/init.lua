-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- ediotor settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.expandtab = false
vim.opt.relativenumber = true
vim.opt_local.conceallevel = 1
vim.opt.cursorline = true
vim.opt.colorcolumn = '80'
-- vim.opt.conceallevel = 2
-- keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '<M-j>', '<cmd>cnext<cr>')
vim.keymap.set('n', '<M-k>', '<cmd>cprev<cr>')

return {
  {
    'ThePrimeagen/harpoon',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('harpoon').setup {}
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'
      vim.keymap.set('n', '<leader>a', mark.add_file)
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
      vim.keymap.set('n', '<leader>1', function()
        ui.nav_file(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        ui.nav_file(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        ui.nav_file(3)
      end)
      vim.keymap.set('n', '<leader>4', function()
        ui.nav_file(4)
      end)
    end,
  },
}
