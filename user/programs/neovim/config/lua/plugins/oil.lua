return {
  'stevearc/oil.nvim',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('oil').setup({
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
    })

    -- Keymaps
    vim.keymap.set('n', '-', function()
      require('oil').open()
    end, { desc = 'Open parent directory' })
  end,
}
