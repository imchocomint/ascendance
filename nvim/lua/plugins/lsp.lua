-- lua/plugins/lsp.lua
return {
  'neovim/nvim-lspconfig',
  config = function()
    -- Đây là nơi bạn đặt cấu hình cho các LSP server
    local lspconfig = require('lspconfig')

    -- Kích hoạt pyright cho Python
    lspconfig.pyright.setup({})

    -- Kích hoạt gopls cho Go
    lspconfig.gopls.setup({})

    -- Thêm các server khác ở đây nếu cần, ví dụ:
    -- lspconfig.tsserver.setup({})
  end
}