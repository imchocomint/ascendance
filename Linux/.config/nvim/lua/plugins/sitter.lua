return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = { "OXY2DEV/markview.nvim" },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "python", "go", "c_sharp", "markdown" },
      highlight = {
        enable = true,
      },
    })
  end
}