" vim-go settings
let g:go_doc_popup_window = 1
let g:go_fmt_command = 'goimports'
let g:go_rename_command = 'gopls'

let g:go_echo_go_info = 1
let g:go_term_enabled = 1

" let g:go_auto_type_info = 1
" set updatetime=100

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1

nnoremap <Leader>P :GoDecls<CR>
nnoremap <Leader>R :GoReferrers<CR>
nnoremap <Leader>B :GoBuild<cr>
nnoremap <Leader>F :GoFillStruct<cr>
nnoremap <Leader>i :<C-u>call go#tool#Info(1)<cr>

nnoremap <C-W>gd :<C-u>call go#def#Jump("tab", 0)<cr>
nnoremap <C-W>vgd :<C-u>call go#def#Jump("vsplit", 0)<cr>
