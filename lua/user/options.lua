local options = {
  termguicolors   = true,
  autoindent      = true,
  backup          = false,                          
  clipboard       = "unnamedplus",               
  cmdheight       = 1,                           
  completeopt     = { "menuone", "noselect" }, 
  conceallevel    = 0,                        
  cursorline      = true,                       
  expandtab       = true,                        
  equalalways     = true,
  fileencoding    = "utf-8",                  
  guifont         = "monospace:h17",               
  hlsearch        = false,                         
  hidden          = true,
  ignorecase      = true,                       
  incsearch       = true,
  laststatus	    = 2,
  mouse           = "a",                             
  number          = true,                           
  numberwidth     = 4,                         
  pumheight       = 10,                          
  relativenumber  = false,                  
  scrolloff       = 8,                           
  shiftwidth      = 2,                          
  showmode        = true,                        
  showtabline     = 2,                         
  shortmess       = "c",
  sidescrolloff   = 20,
  signcolumn      = "yes",                      
  relativenumber  = true,
  smartcase       = true,                        
  smartindent     = true,                      
  smarttab        = true,
  splitbelow      = true,                       
  scrolloff       = 10,
  softtabstop     = 2,
  shiftwidth      = 2,
  splitright      = true,                       
  swapfile        = false,                        
  tabstop         = 2,                             
  timeoutlen      = 500,                       
  undofile        = true,                         
  updatetime      = 300,                        
  wrap            = false,                            
  writebackup     = false,                     
  foldmarker      = "{,}",
}

vim.opt.shortmess:append "c"

--- vim.opt.noh = true
-- nohlsearch      = true,
-- vim.o.nohlsearch = true
vim.wo.wrap = true
vim.wo.colorcolumn     = '81'

for k, v in pairs(options) do
  vim.opt[k] = v
end
-- vim.cmd([[ set incsearch set hlsearch set nohlsearch ]])

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.api.nvim_command([[
au BufEnter * set fo-=co fo-=r fo-=o
]])

-- nohilights, highlights all matches while searching
	-- You can use the CTRL-G and CTRL-T keys to move to the next and
	-- previous match. |c_CTRL-G| |c_CTRL-T|
vim.api.nvim_command([[
		augroup vimrc-incsearch-highlight
		  autocmd CmdlineEnter /,\? :set hlsearch
		  autocmd CmdlineLeave /,\? :set nohlsearch
		augroup END
]])
