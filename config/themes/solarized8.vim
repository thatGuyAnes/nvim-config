" solarized8_high: high-contrast variant;
" solarized8: the default Solarized theme;
" solarized8_low: low-contrast variant;
" solarized8_flat: flat variant;

" `normal` (default), `low`, `high`;
let g:solarized_visibility = 'normal'

" `normal` (default), `low`, `high`;
let g:solarized_diffmode = 'normal'

" make terminal background transparent if set to 1 (default: 0).
let g:solarized_termtrans = 0

" `normal` (default), `low` or `flat`;
let g:solarized_statusline = 'normal'

" set to 0 to suppress italics (default is 1).
let g:solarized_italics = 1

" set to 1 if you want to use the original Solarized's cursor style (default:
" 0). By default, the cursor is orange/red in light themes, and blue in dark
" themes (but please note that your terminal may override the cursor's color).
let g:solarized_old_cursor_style = 1

" set to 1 to force using your 16 ANSI terminal colors.
let g:solarized_use16 = 0

" set to 1 to enable Solarized filetype-specific syntax highlighting groups
" (default is 0). Please be aware that if your Vim is not recent enough you
" may encounter an issue with syntax items defined in color schemes.
let g:solarized_extra_hi_groups = 0
