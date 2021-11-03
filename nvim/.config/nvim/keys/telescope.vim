" TOD:Explorar mais funcoes 
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fg <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files({hidden = true })<cr>
nnoremap <leader>ffa <cmd>lua require('telescope.builtin').find_files({hidden = true, search_dirs={"~/winhome/Documents"}, file_ignore_patterns ={"*.git"}})<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap<leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
