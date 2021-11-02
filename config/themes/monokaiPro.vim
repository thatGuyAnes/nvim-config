" The theme comes with six filters, default, machine, ristretto, octogon spectrum, and classic
" default: "default"
let g:monokaipro_filter = "default"

" Configure the colors used when opening a :terminal in Neovim
" default: true
let g:monokaipro_terminal_colors = v:true


" Make comments italic
" default: true
let g:monokaipro_italic_comments = v:true

" Make keywords italic
" true
let g:monokaipro_italic_keywords = v:true

" Make functions italic
" false
let g:monokaipro_italic_functions = v:false


" Make variables and identifiers italic
" false
let g:monokaipro_italic_variables = v:false

" Enable this to disable setting the background color
" false
let g:monokaipro_transparent = 1

" Enabling this option, will hide inactive statuslines and replace them with a
" thin border instead. Should work with the standard StatusLine and LuaLine.
" false
let g:monokaipro_hide_inactive_statusline = v:false

" Set a darker background on sidebar-like windows. For example: ["vista_kind", "packer"]
" {}
let g:monokaipro_sidebars = []

" When true sidebar like windows will use the normal background
" false
let g:monokaipro_flat_sidebar = v:false

" When true float and diagnostic like windows will use the normal background
" false
let g:monokaipro_flat_float = v:false

" When true the integrated terminal will use the normal background
" false
let g:monokaipro_flat_term = v:false

" You can override specific color groups to use other groups or a hex color
" {}
let g:monokaipro_colors = []
