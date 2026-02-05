return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
  },
  config = function()
    vim.diagnostic.config({
      severity_sort = true,
      virtual_text = true,
    })

    -- Servers
    local servers = {
      lua_ls = {},
      nil_ls = {},
      rust_analyzer = {},
      basedpyright = {},
    }

    -- Configure
    for server, config in pairs(servers) do
      vim.lsp.enable(server)
      vim.lsp.config(server, config)
    end
  end,
}
