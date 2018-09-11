execute pathogen#infect()

" Colors
syntax enable
colorscheme badwolf
hi Normal guibg=NONE ctermbg=NONE "transparent background
hi NonText ctermbg=none

" Tabs
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab

" UI stuff
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline "highlight current line
set wildmenu "visual complete for command menu
set lazyredraw " redraw only when necessary
set showmatch "highlight matching brackets
filetype plugin indent on "filetype indent

"Searching
set incsearch "search as characters are entered
set hlsearch " highlight matches

" Folding
set foldenable "folds code blocks
set foldlevelstart=10 "folds only after 10 lines
set foldnestmax=10 "max 10 nested folds
" F2 to open/close folds
nnoremap <F2> za
set foldmethod=indent " folds based on indent level

" Movement
	" move by visual line, not actual
nnoremap j gj
nnoremap k gk

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" Turn on spellcheck
set spelllang=en
set spell
