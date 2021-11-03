" Telescope bindings
source $HOME/.config/nvim/keys/telescope.vim
source $HOME/.config/nvim/keys/treesitter.vim
source $HOME/.config/nvim/keys/nerdcommenter.vim
source $HOME/.config/nvim/keys/nvimtree.vim

" Esc to jk
inoremap jk <Esc>
inoremap kj <Esc>

" TAB in general mode will move to text buffer; SHIFT-TAB will go back
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <C-\><C-N>:w<CR>
" Alternate way to save-quit
nnoremap <C-Q> :wq!<CR>
" Alternate way to quit
nnoremap <S-Q> :q<CR>
" Close buffer without exiting nvim
" nnoremap <C-W> :bd<CR>

" Easy Selection<
nnoremap <S-left> v<LEFT>
inoremap <S-left> <ESC>v<LEFT>
vnoremap <S-left> <LEFT>

nnoremap <S-RIGHT> v<RIGHT>
inoremap <S-RIGHT> v<RIGHT>
vnoremap <S-RIGHT> <RIGHT>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Move lines easily
vnoremap K :m '>+1<CR>gv=gv
vnoremap J :m '<-2<CR>gv=gv

" Delete a with ctrl backspace
" nnoremap <C-H> i<C-w><C-[>
inoremap <C-H> <C-W>
"<C-\><C-o>db  
"<C-\><C-o> executa normal mode para um comando somente
"vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})

"Delete a ctrl+delete
nnoremap <C-DEL> dw
inoremap <C-DEL> <C-\><C-n>dw

" Easy CAPS a word
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" source easily?
nnoremap <Leader>sv :source $MYVIMRC<CR>
