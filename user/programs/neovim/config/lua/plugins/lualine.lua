return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
    tabline = {
      lualine_a = {
        {
          'buffers',
          filetype_names = {
            TelescopePrompt = 'Telescope',
            dashboard = 'Dashboard',
            packer = 'Packer',
            fzf = 'FZF',
            alpha = 'Alpha',
          }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

          symbols = {
            modified = ' ●', -- Text to show when the buffer is modified
            alternate_file = '', -- Text to show to identify the alternate file
            directory = '', -- Text to show when the buffer is a directory
          },
        },
      },
      lualine_z = { 'lsp_status' },
    },
  },
}
