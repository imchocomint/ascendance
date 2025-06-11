# Ascendance
OS-independent*, mass-deployable neovim configs.

Comes with some plugins. You can remove at any time.

Uses lazy.nvim package manager. OOTB supports for Markdown and Python.

<span style="font-size:0.7em;"> *A slight change is needed to provide best result on Windows. If you don't want to, move /nvim/ to $HOME/.config/ and then hyperlink or whatever to make neovim recognize the init.lua file. </span>

# Installation
## Windows
Copy /nvim/ to $HOME/AppData/Local/. Copy /for-win/ to the mentioned folder (not /nvim/ folder)
## Linux
Copy /nvim/ to $HOME/.config/.
## macOS
IDK. May work but someone with a MacBook/iMac/Mac mini/Mac studio/Mac pro/Hackintosh please test it for me
## Android (via Termux)
Install Clang (pkg/apt install clang). Copy /nvim/ to $HOME/.config/.

# Functions
- Have a menu screen & a bottom bar

- Tailorable

- Feature-rich, and extensible (via plugins)

- Works cross-platform*

- Use Lua for init (no need to convert code again)

- ...you name it. Pull request is always welcome

# Roadmap
The config is pretty good for now, and is my daily driver.

- [ ] Further refactoring the code, especially the plugins
- [ ] Adding some features. I don't know what to add, but you can do pull request for that
- [ ] Install script
- [ ] Better aethestic e.g. coloring
- [x] Merging the folders together
# List of plugins used:
- [compiler.nvim](https://github.com/Zeioth/compiler.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim). The developer's life story is heart-touching and if you like the plugin, donate to him.
- neovim LSP
- [nvim-treesitter stable](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [scrollbar.nvim](https://github.com/xuyuanp/scrollbar.nvim)
- [catppuccin](https://github.com/catppuccin/nvim)

# Gallery
![image](https://preview.redd.it/an-afternoon-and-an-ai-later-v0-djw4x1wldb5f1.png?width=640&crop=smart&auto=webp&s=0227dba448581afde0c9985425106bc3caba6739)
![Alt text](https://preview.redd.it/an-afternoon-and-an-ai-later-v0-kefdh3wldb5f1.png?width=1080&crop=smart&auto=webp&s=82f84b110ce15566d3a8e410ba3f6920d824b596)

<span style="font-size:0.7em;"> *A slight change is needed to provide best result on Windows. If you don't want to, move /nvim/ to $HOME/.config/ and then hyperlink or whatever to make neovim recognize the init.lua file. </span>

