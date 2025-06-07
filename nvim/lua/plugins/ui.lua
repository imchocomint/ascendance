
return {

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' } -- dependency cho icons
  },


  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' } -- dependency cho icons
  },


  {
    'goolord/alpha-nvim',
    event = "VimEnter",
	  dependencies = { "RchrdAriza/nvim-web-devicons" },
    config = function ()
      local alpha = require("alpha")
		  local dashboard = require("alpha.themes.dashboard")
      local time = os.date("%H:%M")
		  local date = os.date("%a %d %b")
	    local v = vim.version()
		  local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
      dashboard.section.header.val = {
              "                                                                                          ",
              " _______  _______  _______  _______  __    _  ______   _______  __    _  _______  _______ ",
              "|   _   ||       ||       ||       ||  |  | ||      | |   _   ||  |  | ||       ||       |",
              "|  |_|  ||  _____||       ||    ___||   |_| ||  _    ||  |_|  ||   |_| ||       ||    ___|",
              "|       || |_____ |       ||   |___ |       || | |   ||       ||       ||       ||   |___ ",
              "|       ||_____  ||      _||    ___||  _    || |_|   ||       ||  _    ||      _||    ___|",
              "|   _   | _____| ||     |_ |   |___ | | |   ||       ||   _   || | |   ||     |_ |   |___ ",
              "|__| |__||_______||_______||_______||_|  |__||______| |__| |__||_|  |__||_______||_______|",
              "",
              "",
              "                                   Created by imchocomint                                 ",
      }
      dashboard.section.buttons.val = {
        dashboard.button("n", "New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "Find file", ":cd $HOME | Telescope find_files<CR>"),
        dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("p", "Plugins (lazy)", ":Lazy<CR>"),
        dashboard.button("c", "Configuration (init)", ":e $HOME/AppData/Local/nvim/init.lua<CR>"),
        dashboard.button("q", "Quit", ":qa<CR>"),
		  }

      function centerText(text, width)
        local totalPadding = width - #text
        local leftPadding = math.floor(totalPadding / 2)
        local rightPadding = totalPadding - leftPadding
        return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
      end
      dashboard.section.footer.val = {
        centerText(date, 50),
        centerText(time, 50),
        centerText(version, 50),
        
      }
		  alpha.setup(dashboard.opts)
      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
  },


  {
    'Xuyuanp/scrollbar.nvim',
    init = function()
        local group_id = vim.api.nvim_create_augroup('scrollbar_init', { clear = true })
        vim.api.nvim_create_autocmd({ 'BufEnter', 'WinScrolled', 'WinResized' }, {
            group = group_id,
            desc = 'Show or refresh scrollbar',
            pattern = { '*' },
            callback = function()
                require('scrollbar').show()
            end,
        })
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  }, 
}