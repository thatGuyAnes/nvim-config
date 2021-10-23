" All hail the space key!!!
let g:mapleader = "\<Space>"

" map <Esc> to exit terminal-mode:
tnoremap <Esc> <C-\><C-n>

"###############################################################################
"### NAVIGATION ###
"###############################################################################

" Splits navigation.
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Horizontal Scrolling.
noremap <C-l> 10l
noremap <C-h> 10h

nnoremap <silent> <C-j> 5j
nnoremap <silent> <C-k> 5k

" Smooth scrolling: vim-smoothie setup;
let g:smoothie_no_default_mappings = v:true
silent! map <unique> <C-D>      <Plug>(SmoothieDownwards)
silent! map <unique> <C-U>      <Plug>(SmoothieUpwards)
silent! map <unique> <C-f>      <Plug>(SmoothieForwards)
silent! map <unique> <S-Down>   <Plug>(SmoothieForwards)
silent! map <unique> <PageDown> <Plug>(SmoothieForwards)
silent! map <unique> <PageUp>   <Plug>(SmoothieBackwards)


"###############################################################################
"### EDITING ###
"###############################################################################

" Better escape OR f**** use `ctrl-[` !!!
inoremap jj <Esc>
inoremap JJ <Esc>

" Move current line up/down.
nnoremap <silent> mk :move -2<CR>
nnoremap <silent> mj :move +1<CR>
" with the power of gv we can move visual selection!! get last selection.
vnoremap <silent> mk :move -2<CR>gv
vnoremap <silent> mj :move +1<CR>gv


" If you use Vim in a terminal, pressing alt will send an escape character
" followed by the normal_mode_key that you pressed, removing the need to press
" escape yourself.
" For Tmux ; New lines without going to insert mode
nnoremap <A-o> o<Esc>
nnoremap <A-O> O<Esc>

nnoremap vw viw
nnoremap cw ciw
nnoremap dw diw
nnoremap V v$
nnoremap vv V


" Tabbing indentation.
vnoremap < <gv
vnoremap > >gv

" Surround
" `ysiw`             ----> surround word
" `cs`<OLD><NEW>     ----> change surround
" `cst`<NEW>         ----> change surround
" `yss`                ----> surround entire line
" `ds`                 ----> delete surround
" VISUAL + S + <NEW> ----> surround selection

" Commentary
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

"###############################################################################
"### LAYOUT ###
"###############################################################################

" Full width & Full height splits.
nnoremap <leader>fh :wincmd _<CR>
nnoremap <leader>fw :wincmd \|<CR>

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

" File explorer.
nnoremap <silent> <C-p> :Files<CR>
