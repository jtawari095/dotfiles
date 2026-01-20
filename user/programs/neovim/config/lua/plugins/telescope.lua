return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      '<leader>tp',
      function()
        require('telescope.builtin').git_files()
      end,
      { desc = 'Telescope git files' },
    },
    {
      '<leader>tr',
      function()
        require('telescope.builtin').live_grep()
      end,
      { desc = 'Telescope live grep' },
    },
  },
}
