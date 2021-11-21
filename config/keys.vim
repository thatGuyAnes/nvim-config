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

" Smooth scrolling: vim-smoothie setup.
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
nnoremap <silent> <A-k> :m-2<CR>==
nnoremap <silent> <A-j> :m+<CR>==
vnoremap <silent> <A-k> :m'<-2<CR>gv=gv
vnoremap <silent> <A-j> :m'>+<CR>gv=gv
inoremap <silent> <A-k> <Esc>:m-2<CR>==gi
inoremap <silent> <A-j> <Esc>:m+<CR>==gi
nnoremap <silent> <A-}> :m'}-<CR>
nnoremap <silent> <A-{> :m'{+<CR>

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

" I don't necessary need this.
" Horizontal resize
" nnoremap <M-j> :resize -5<CR>
" nnoremap <M-k> :resize +5<CR>

noremap <silent> <leader>date "=strftime("%F")<CR>p9h
noremap <silent> <leader>time "=strftime("%X")<CR>p7h

" File explorer.
nnoremap <silent> <C-p> :Files<CR>
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }
" let g:fzf_layout = { 'down': '50%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
