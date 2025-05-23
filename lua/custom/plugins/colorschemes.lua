return {
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {
        options = {
          transparent = true,
          styles = {
            comments = 'italic',
            types = 'italic',
            keywords = 'italic',
          },
          inverse = {},
        },
        palettes = {
          carbonfox = {
            red = '#FFA500',
          },
        },
        specs = {
          carbonfox = {
            syntax = {
              keyword = '#cc714e',
              preproc = '#cc9955',
              string = '#ECE1CB',
              types = '#eb7900',
            },
          },
        },
      }
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      vim.cmd 'colorscheme terafox'
    end,
  },
  {
    'datsfilipe/vesper.nvim',
    config = function()
      require('vesper').setup {
        transparent = true, -- Boolean: Sets the background to transparent
        italics = {
          comments = true, -- Boolean: Italicizes comments
          keywords = true, -- Boolean: Italicizes keywords
          functions = true, -- Boolean: Italicizes functions
          strings = true, -- Boolean: Italicizes strings
          variables = true, -- Boolean: Italicizes variables
        },
        overrides = {}, --false A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {},
      }
    end,
  },
  {
    'fenetikm/falcon',
  },
  {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    config = function()
      require('kanagawa').setup {
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
          palette = {
            dragonAqua = '#01FCFE',
            -- dragonViolet = "#c447ff",
            -- dragonYellow = "#DD571C",
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

            -- elescopeTitle = { fg = theme.ui.special, bold = true },
            -- TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            -- TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            -- TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            -- TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            -- TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            -- TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
      }
    end,
  },
}
