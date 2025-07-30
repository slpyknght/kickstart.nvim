return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  -- config = function()
  --   local actions = require 'telescope.actions'
  --   local open_with_trouble = require('trouble.sources.telescope').open
  --   -- Use this to add more results without clearing the trouble list
  --   local add_to_trouble = require('trouble.sources.telescope').add
  --   local telescope = require 'telescope'
  --   telescope.setup {
  --     defaults = {
  --       mappings = {
  --         i = { ['<c-t>'] = open_with_trouble },
  --         n = { ['<c-t>'] = open_with_trouble },
  --       },
  --     },
  --   }
  -- end,
  keys = {
    {
      '<leader>td',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>tb',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>tcs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'Symbols (Trouble)',
    },
    {
      '<leader>tcl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'LSP Definitions / references / ... (Trouble)',
    },
    {
      '<leader>txL',
      '<cmd>Trouble loclist toggle<cr>',
      desc = 'Location List (Trouble)',
    },
    {
      '<leader>txQ',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'Quickfix List (Trouble)',
    },
  },
}
