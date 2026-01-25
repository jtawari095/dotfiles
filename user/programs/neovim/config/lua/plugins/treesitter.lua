return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers =
      { 'bash', 'css', 'diff', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'python', 'query', 'vim', 'vimdoc' }

    -- Install parsers
    require('nvim-treesitter').install(parsers)

    -- Enable features
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        local buf = args.buf
        local language = vim.treesitter.language.get_lang(args.match)

        if language and vim.tbl_contains(parsers, language) then
          -- Enable highlighting
          vim.treesitter.start(buf, language)

          -- Enable indentation
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
