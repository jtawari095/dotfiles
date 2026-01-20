return {
  'NeogitOrg/neogit',
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
  },
  cmd = 'Neogit',
  keys = {
    {
      '<Up>',
      function()
        require('neogit').open()
      end,
      { desc = 'Open neogit UI' },
    },
  },
}
