call plug#begin('~/.local/share/nvim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'hail2u/vim-css3-syntax'
Plug 'neomake/neomake'
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'udalov/kotlin-vim'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'
call plug#end()


" pretty things
colorscheme challenger_deep
syntax enable
set list
set listchars=tab:▸\ ,eol:¬
set colorcolumn=80
set number
set relativenumber
set nowrap
set termguicolors
set noshowmode

" search things
set ignorecase
set smartcase

" because I can't use the touch bar's ESC
inoremap jk <ESC>

" switch to last buffer
nnoremap `1 :e#<CR>

" fuzzy file search
nnoremap <Leader>p :FZF<CR>
nnoremap <C-p> :FZF<CR>


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
nnoremap <Leader>i :<C-u>call go#tool#Info(1)<cr>
nnoremap <C-W>gd :<C-u>call go#def#Jump("tab", 0)<cr>
nnoremap <C-W>vgd :<C-u>call go#def#Jump("vsplit", 0)<cr>


" Neomake stuff
call neomake#configure#automake('w') " when writing a buffer, no delay
let g:neomake_open_list = 2
let g:neomake_html_enabled_makers = []

" YAML stuff
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" Lightline stuff
let g:lightline = {
	\ 'colorscheme': 'challenger_deep',
	\ 'component_function': {
	\   'filename': 'LightlineFilename'
	\ }
\ }

function! LightlineFilename()
  return expand('%')
endfunction
