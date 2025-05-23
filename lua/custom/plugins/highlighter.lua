return {
  'kevinhwang91/nvim-hlslens',
  config = function()
    require('hlslens').setup {
      override_lens = function(render, posList, nearest, idx, relIdx)
        local text, chunks
        local lnum, col = unpack(posList[idx])
        if nearest then
          local cnt = #posList
          text = (' 「%d/%d 」'):format(idx, cnt)
          chunks = { { ' ' }, { text, 'HlSearchLensNear' } }
        end
        render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
      end,
    }
    local kopts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
    vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

    vim.api.nvim_set_keymap('n', '<Leader>l', '<Cmd>noh<CR>', kopts)
  end,
}
