return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  config = function()
    local clients_lsp = function()
      local bufnr = vim.api.nvim_get_current_buf()

      local clients = vim.lsp.get_clients()
      if next(clients) == nil then
        return ''
      end

      local c = {}
      for _, client in pairs(clients) do
        table.insert(c, client.name)
      end
      return '\u{f085}  ' .. table.concat(c, '|')
    end

    local config = {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { clients_lsp },
        lualine_y = { 'fileformat' },
        lualine_z = { 'location' },
      },
    }

    require('lualine').setup(config)
  end,
}
