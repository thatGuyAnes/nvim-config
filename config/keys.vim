" All hail the space key!!!
let g:mapleader = "\<Space>"

" map <Esc> to exit terminal-mode:
tnoremap <Esc> <C-\><C-n>

" Splits navigation.
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Better escape OR fucking use ctrl-[ !!!
inoremap jj <Esc>
inoremap JJ <Esc>

"//////////////////////////////////////////////////////////////////////////////
" If you use Vim in a terminal, pressing alt will send an escape character
" followed by the normal_mode_key that you
" pressed, removing the need to press escape yourself.
"//////////////////////////////////////////////////////////////////////////////
" For Tmux ;
" New lines without going to insert mode
nnoremap <A-o> o<Esc>
nnoremap <A-O> O<Esc>

" Better editing
nnoremap vw viw
nnoremap cw ciw
nnoremap dw diw
nnoremap V v$
nnoremap vv V

" Better tabbing indentation
vnoremap < <gv
vnoremap > >gv

" Full width & Full height splits.
nnoremap <leader>fh :wincmd _<CR>
nnoremap <leader>fw :wincmd \|<CR>

" Commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" Vertical resize
" nnoremap <Leader>rl :vertical resize +5<CR>
" nnoremap <Leader>rh :vertical resize -5<CR>
nnoremap <M-l> :vertical resize -5<CR>
nnoremap <M-h> :vertical resize +5<CR>

" Horizontal resize
" nnoremap <Leader>rj :resize +5<CR>
" nnoremap <Leader>rk :resize -5<CR>
nnoremap <M-j> :resize -5<CR>
nnoremap <M-k> :resize +5<CR>

" Surround
" `ysiw`             ----> surround word
" `cs`<OLD><NEW>     ----> change surround
" `cst`<NEW>         ----> change surround
" `yss`                ----> surround entire line
" `ds`                 ----> delete surround
" VISUAL + S + <NEW> ----> surround selection

" File explorer.
nnoremap <silent> <C-p> :Files<CR>

" " Toggle Tree
" map <silent> <C-n> :NERDTreeToggle<CR>
" map <leader>nf :NERDTreeFind<CR>
