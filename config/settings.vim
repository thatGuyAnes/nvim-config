set nowrap                              " Disables line wrapping.
set cursorline                          " Highlights the current line.
set tabstop=4                           " Tabs are 2 spaces.
set showtabline=2                       " Show tabs (default 0:never, 1: more than one window, 2:always)
set softtabstop=4                       " Nuber of spaces that <Tab> uses when editing.
set shiftwidth=4                       " Number of space characters used for indentation.
set expandtab                           " Changes tabs to spaces.
set smartindent                         " Shrewder and better auto indentation.
set autoindent                          " Atuto indent.
set smarttab                            " Better IQ for tabs.
set mouse+=a                            " Enables mouse support.
set hidden                              " Keeps multiple buffers open.
set encoding=utf-8                      " Sets utf8 as the encoding displayed.
set incsearch                           " Shows the matched charcters when searching.
set hlsearch                            " Highlights all matched search.
set ignorecase                          " Ignores case sensitivity.
set smartcase                           " Enables case sensitivity when using uppercases.
set colorcolumn=81                      " 80 characters column.
set splitright                          " Vertical splits to the right.
set splitbelow                          " Horizontal splits to the bottom.
set nu                                  " Enables line numbers.
set relativenumber                      " Line numbers relative to the current line.
set nohlsearch                          " No highlights after searching is done.
set clipboard+=unnamedplus              " Copy paste from clipboard from/to vim.
set noshowmode                          " Remove mode information (unnecessary because it's displayed in the statusline)
set laststatus=2                        " Statusline even there's only one window ALWAYS!!!
set cmdheight=1                         " Command line height (default 1).
set signcolumn=yes                      " Enables sign colomn.
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set updatetime=300                      " faster completion.
set timeoutlen=500                      " Time to wait for a mapped sequence to complete.
set conceallevel=0                      " Shows backticks in md files.
set winblend=30                         " Floating windows transparency.
set sidescroll=5                        " Number of columns to scroll horizontaly offscreen.
set scrolloff=3                         " Always showing 3 lines when scrolling.
" set scroll=4                            " Number of lines to scroll by.
au BufEnter * set fo-=c fo-=r fo-=o     " set formatoptions-=rco, simply stops having comment on new line.
au! BufWritePost $MYVIMRC source %      " Saving in init.vim sources it. (:source $MYVIMRC)
" set listchars+=precedes:<,extends:>

" Blinking cursor in insert mode + horizontal cursor in visual and replace mode.
" set guicursor=i-c:ver100-iCursor-blinkwait300-blinkon200-blinkoff150,v-r-cr:hor20

" Treat <li> and <p> tags like the block tags they are.
let g:html_indent_tags = 'li\|p'

" Indent 4 spaces in HTML
autocmd Filetype html setlocal ts=4 sw=4 expandtab"# {{{# {{{# {{{# {{{
filetype plugin indent on"# }}}# }}}# }}}# }}}

" Turn on spell check for markdown files.
autocmd BufRead,BufNewFile *.md setlocal spell
set complete+=kspell
" spelllan=en_us


" Emoji in markdown using vim-emoji plugin:
augroup emoji_complete
    autocmd!
    autocmd Filetype markdown setlocal completefunc=emoji#complete
augroup END
