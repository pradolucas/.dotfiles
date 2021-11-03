call plug#begin('~/local/share/nvim/plugged')
"gruvbox theme
Plug 'gruvbox-community/gruvbox' 
" tokyo night theme"
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" tokyo Dark theme"
Plug 'tiagovla/tokyodark.nvim'
"nord theme
Plug 'shaunsingh/nord.nvim' 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

"partenses coloridos
Plug 'p00f/nvim-ts-rainbow' 
"completa parentes
Plug 'windwp/nvim-autopairs'

" Telescope
Plug 'nvim-lua/plenary.nvim' "Telescope dependency
Plug 'nvim-telescope/telescope.nvim' "fuzzy finder files

" for commenting
Plug 'preservim/nerdcommenter' 

" status bar
" Plug 'hoob3rt/lualine.nvim' " status bar, depreciado
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" aba superior
Plug 'akinsho/bufferline.nvim' 
Plug 'kyazdani42/nvim-tree.lua' "file vizualizer

"LSP & completition"
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
" Snippets like VScode
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" VSCODE like symbols"
Plug 'onsails/lspkind-nvim'

" Lembra keys
Plug 'folke/which-key.nvim'

" Dashboard
Plug 'glepnir/dashboard-nvim'

" Smoth scrolling
Plug 'karb94/neoscroll.nvim' "meh
call plug#end()

source $HOME/.config/nvim/plugins/nvim-treesitter/init.lua
" :lua require'lualine'.setup()
source $HOME/.config/nvim/plugins/nerdcommenter-config/nerdcommenter.vim
source $HOME/.config/nvim/plugins/lualine-config/init.lua
":lua require'bufferline'.setup()
source $HOME/.config/nvim/plugins/bufferline-config/init.lua
" :lua require'nvim-web-devicons'.setup()
source $HOME/.config/nvim/plugins/nvimtree-config/init.lua
source $HOME/.config/nvim/plugins/autopairs-config/init.lua
source $HOME/.config/nvim/lua/lsp/init.lua 
source $HOME/.config/nvim/plugins/neoscroll-config/init.lua

