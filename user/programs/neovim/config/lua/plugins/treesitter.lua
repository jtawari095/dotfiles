return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers =
      { 'bash', 'diff', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'python', 'query', 'vim', 'vimdoc' }

    -- Install parsers
    require('nvim-treesitter').install(parsers)

    -- Enable features
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        local buf = args.buf
        local language = vim.treesitter.language.get_lang(args.match)

        if language and vim.tbl_contains(parsers, language) then
          vim.treesitter.start(buf, language)
        end
      end,
    })
  end,
}
