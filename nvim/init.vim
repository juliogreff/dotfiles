call plug#begin('~/.local/share/nvim/plugged')
" Plug '/usr/local/opt/fzf'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
Plug 'hail2u/vim-css3-syntax'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jvirtanen/vim-hcl'
Plug 'neomake/neomake'
Plug 'vim-ruby/vim-ruby'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
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

" tabs and spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

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

" Neomake stuff
" call neomake#configure#automake('w') " when writing a buffer, no delay
" let g:neomake_open_list = 2
" let g:neomake_html_enabled_makers = []

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

" TypeScript stuff
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
