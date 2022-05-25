:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection'
Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/frazrepo/vim-rainbow'
Plug 'hrsh7th/vim-vsnip'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'tribela/vim-transparent'
Plug 'Rigellute/rigel'
set encoding=UTF-8
set clipboard^=unnamed,unnamedplus
call plug#end()
let g:neovide_cursor_vfx_mode = "railgun"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-a> :TransparentEnable<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-u> :q <CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l 
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>
let g:neovide_cursor_vfx_mode = "sonicboom"
nmap <F8> :TagbarToggle<CR>
let g:neovide_cursor_animation_length=0.40
:set completeopt-=preview " For No Previews
let g:neovide_transarency=0.70
let g:NERDTreeDirArrowExpandable=">="
let g:NERDTreeDirArrowCollapsible="=>"
let g:neovide_fullscreen=v:true
let g:rainbow_active = 1
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
syntax enable
colorscheme rigel
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
set termguicolors
" air-line
let g:airline_powerline_fonts = 1
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" autocomplete srttings
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')


noremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
