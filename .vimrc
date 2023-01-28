set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" close doc help window :pc or <C-w>z
Plugin 'ycm-core/YouCompleteMe'
Plugin 'preservim/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'romkatv/powerlevel10k'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajmwagar/vim-deus',
Plugin 'nicwest/vim-http'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'
Plugin 'tomasiser/vim-code-dark'
Plugin 'gosukiwi/vim-atom-dark', { 'name': 'atomdark' }
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'kyoz/purify', { 'rtp': 'vim' }
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'hrsh7th/vim-vsnip'
Plugin 'hrsh7th/vim-vsnip-integ'
Plugin 'Neevash/awesome-flutter-snippets'
Plugin 'natebosch/vim-lsc'
Plugin 'natebosch/vim-lsc-dart'
Plugin 'mhartington/oceanic-next'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
" ctrl+y +  ,
Plugin 'mattn/emmet-vim'
Plugin 'rstacruz/vim-closer'
" :FloatermNew 
Plugin 'voldikss/vim-floaterm'
Plugin 'rust-lang/rust.vim'
Plugin 'Bogdanp/browser-connect.vim'
"" toggle \c<space> \cc \cu
Plugin 'preservim/nerdcommenter'
Plugin 'arcticicestudio/nord-vim'
" 1st install code-minimap (https://github.com/wfxr/code-minimap)
" Plugin 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plugin 'wfxr/minimap.vim'
" Plugin 'OmniSharp/omnisharp-vim'
Plugin 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'yuezk/vim-js'
Plugin 'Yggdroot/indentLine'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Run :PlugInstall to install the plugin.
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set number
let g:NERDTreeNodeDelimiter = "\u00a0"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set backspace=indent,eol,start
autocmd VimEnter * NERDTree
syntax on
set laststatus=2
set noswapfile
set linespace=0
" colorscheme dracula
" colorscheme codedark
" colorscheme atomdark
"colorscheme onehalfdark
" colorscheme onehalflight
" colorscheme purify
" colorscheme gruvbox
" colorscheme molokai
" colorscheme deus 
" colors deus
" Theme
syntax enable
" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
 set termguicolors
endif
" colorscheme OceanicNext
colorscheme nord

filetype plugin indent on

" vim airline-config
" sudo apt-get install fonts-powerline
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = 'ln'

let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_theme = 'ouo'
" let g:airline_theme = 'dracula'
" let g:airline_theme = 'powerlineish'
" let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'oceanicnext'
" let g:airline_theme = 'luna'
" let g:airline_theme = 'deus'
let g:airline_theme = 'nord'
let g:airline_font_size=7
let g:airline_experimental = 1

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
imap <expr> <C-j>   vsnip#available(1)  ? '<Plug>(vsnip-expand)'         : '<C-j>'
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
let g:lsc_auto_map = v:true
set background=dark    " Setting dark mode
" colorscheme deus
" let g:deus_termcolors=256
let NERDTreeShowHidden=1
set guifont=MesloLGS\ NF:h12
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1
set showmatch
