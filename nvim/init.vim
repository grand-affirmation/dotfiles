set termguicolors
set nocompatible
filetype plugin on
syntax on
set noswapfile
let mapleader=" "
set signcolumn=no

" Automatically makes a folder when it's nonexistent on save
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" FOR NEOVIM ONLY; makes copy paste to clipboard possible
function! ClipboardYank()
	call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
	let @@ = system('xclip -o -selection clipboard')
endfunction
vnoremap <silent> <"-+-y>:call ClipboardYank()<cr>
vnoremap <silent> <"-+-p>:call ClipboardPaste()<cr>p

"" Better j and k
nnoremap j gj
nnoremap k gk

" Supresses the warnings in vimtex
let g:vimtex_quickfix_open_on_warning = 0

" clear search highlight
nnoremap <C-h> :let @/ = ""<Cr>

" compiles rust program and runs it
nnoremap <C-l> :w<CR> :term cargo run <cr> :startinsert<cr>
nnoremap <C-A-l> :w<CR> :term cargo run --release <cr> :startinsert<cr>
nnoremap <C-A-t> :w<CR> :term cargo test -- --nocapture <cr> :startinsert<cr>

" colorscheme
" colorscheme onedark
let g:tokyodark_transparent_background = 0
let g:tokyodark_enable_italic = 1
let g:tokyodark_enable_italic_comment = 1
let g:tokyodark_color_gamma = "1.0"
colorscheme tokyodark

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles<cr>

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" vimtex
let g:vimtex_compiler_engine='lualatex'
let g:vimtex_view_general_viewer="zathura"

" table mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction
let g:table_mode_corner='|'
" table mode (cont.)
inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

set completeopt=menuone,noinsert,noselect
set shortmess+=c

lua require 'init'
