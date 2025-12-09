return {
  'neovim/nvim-lspconfig',
  event = "VeryLazy",
  
  -- Add Mason and Mason-LSPConfig as dependencies
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  
  -- The configuration options (opts) table now defines the common setup and required servers
  opts = {
    -- This on_attach function will be passed to every server configured by mason-lspconfig
    on_attach = function(client, bufnr)
      -- Enable autoformat on save
      if client.supports_method('textDocument/formatting') then
        vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.format()')
      end

      -- Basic LSP Keymaps 
      
    end,
  },

  -- The config function sets up Mason and Mason-LSPConfig
  config = function(_, opts)
    -- Setup Mason
    require('mason').setup({})

    -- Setup Mason-LSPConfig
    require('mason-lspconfig').setup({
      -- List the servers you want Mason to ensure are installed
      ensure_installed = { 'pyright', 'gopls' }, 
      
      -- Handlers configure how Mason connects to the server
      handlers = {
        -- Pass the common on_attach options to all installed servers
        [''] = function(server_name)
          require('lspconfig')[server_name].setup({
             on_attach = opts.on_attach,
             -- You can add server-specific options here if needed
          })
        end,
      },
    })
  end,
}