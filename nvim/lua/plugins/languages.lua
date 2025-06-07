
return {

  {
    'ray-x/go.nvim',
    dependencies = {
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('go').setup()
    end,
  },
  

  {
    "OXY2DEV/markview.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('markview').setup()
    end
  }
}