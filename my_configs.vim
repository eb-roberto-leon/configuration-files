" extend amix/vimrc

set nu
set mouse=a

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set cursorline
hi CursorLine cterm=NONE ctermbg=236

set colorcolumn=80,120
hi ColorColumn ctermbg=236

" optional reset cursor on start:
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

let g:NERDTreeWinPos = "left"

nmap <leader>tt :TagbarToggle<CR>
nmap <leader>ut :UndotreeToggle<CR>

let g:deoplete#enable_at_startup = 1

" MY PLUGINS INSTALLED
" easymotion
" tagbar
" undotree
" Shougo/deoplete.nvim
" roxma/nvim-yarp
" roxma/vim-hug-neovim-rpc

" SHORTCUTS CHEAT-SHEET
" <leader><CR> :noh
" <leader>o buffer explore 
" <ctrl>f/<leader>j ctrlp
" <leader>f recently used
" gf open file under cursor
" <leader>gcc comment gc/gcu
" <ctrl>n/<ctrl>s multiple cursor
" <leader>nn nerdtree <leader>nf nerdtree find
" <leader>tn tab new <leader>to tabonly <leader>tc tab close
" <leader>g ack / gv ack with visual selected / <leader>cc repeat again
