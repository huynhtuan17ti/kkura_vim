set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'vim-airline/vim-airline' " Status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin '907th/vim-auto-save'
Plugin 'agude/vim-eldar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'sheerun/vim-polyglot'
Plugin 'preservim/nerdcommenter'
Plugin 'instant-markdown/vim-instant-markdown'
"Plugin 'preservim/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs' " NERDTree tabs manager
"Plugin 'lambdalisue/fern.vim'
Plugin 'mhinz/vim-grepper' " Search word in project
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'RRethy/vim-illuminate'
Plugin 'brooth/far.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'psliwka/vim-smoothie'
Plugin 'preservim/tagbar'
" ######### FOR PYTHON #########
Plugin 'vim-scripts/indentpython.vim'
Plugin 'dense-analysis/ale'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" fix this YCM not detect .ycm_extra_conf.py

" ---- YCM ----
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py"
let g:ycm_use_clangd = 1
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd-17")
" diable error checking
"let g:ycm_show_diagnostics_ui = 1 
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1
" enable :lnext and :lprevious (jump to next/previous error)
let g:ycm_always_populate_location_list = 1
" Disable signature help
" let g:ycm_disable_signature_help = 1
let g:ycm_auto_hover = ''
" Show error details
let g:ycm_show_detailed_diag_in_popup=1
" semantic highlighting
let g:ycm_enable_semantic_highlighting = 0
let g:ycm_enable_diagnostic_highlighting = 1
" hint display limit
let g:ycm_max_num_candidates = 8
let g:ycm_max_num_identifier_candidates = 8
" echo error or warning
let g:ycm_echo_current_diagnostic = 1
let g:ycm_echo_current_diagnostic = 'virtual-text'
" error and warning symbol
let g:ycm_error_symbol = 'E'
let g:ycm_warning_symbol = 'W'
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_args = ['-pretty', '--query-driver=**']
" highlight YcmErrorLine guibg=#3f0000
" Map cuda files to c++ so that Ycm can parse
" autocmd BufNewFile,BufRead *.cu set filetype=cpp
" turn off hover info
let g:ycm_auto_hover = ''
" toggle hover info with <F5>
map <F5> <plug>(YCMHover)

" ---- Cpp Highlight ----
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_concepts_highlight = 1

" ---- LeaderF ----
let g:Lf_WindowPosition = 'popup'
" searching at file level
map <F2> :Leaderf file --no-ignore <CR>
"  searching at line level
map <F3> :Leaderf line<CR>
" searching at dir level
map <F4> :Leaderf rg<CR>
let g:Lf_DefaultExternalTool = "rg"
let g:Lf_UseVersionControlTool = 0
let g:Lf_ShowHidden = 1
let g:Lf_WildIgnore = {
            \ 'dir': ["bazel-*", ".git/", "__pycache__", ".venv", ".ruff_cache", "*.tar.gz", ".lz4", ".whl"],
            \ 'file': []
            \}

" ---- Fern -----
"let g:fern#renderer = "nerdfont"
"map <F2> :Fern . -drawer<CR>
"map <F3> :Fern . -drawer -toggle -stay<CR>

"function! s:init_fern() abort
  " Use 'select' instead of 'edit' for default 'open' action
  "nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)

  " Define NERDTree like mappings
  "nmap <buffer> o <Plug>(fern-action-open:edit)
  "nmap <buffer> go <Plug>(fern-action-open:edit)<C-w>p
  "nmap <buffer> t <Plug>(fern-action-open:tabedit)
  "nmap <buffer> T <Plug>(fern-action-open:tabedit)gT
  "nmap <buffer> i <Plug>(fern-action-open:split)
  "nmap <buffer> gi <Plug>(fern-action-open:split)<C-w>p
  "nmap <buffer> s <Plug>(fern-action-open:vsplit)
  "nmap <buffer> gs <Plug>(fern-action-open:vsplit)<C-w>p
  "nmap <buffer> ma <Plug>(fern-action-new-path)
  "nmap <buffer> P gg

  "nmap <buffer> C <Plug>(fern-action-enter)
  "nmap <buffer> u <Plug>(fern-action-leave)
  "nmap <buffer> r <Plug>(fern-action-reload)
  "nmap <buffer> R gg<Plug>(fern-action-reload)<C-o>
  "nmap <buffer> cd <Plug>(fern-action-cd)
  "nmap <buffer> CD gg<Plug>(fern-action-cd)<C-o>

  "nmap <buffer> ii <Plug>(fern-action-hidden-toggle)

  "nmap <buffer> q :<C-u>quit<CR>
"endfunction

"augroup fern-custom
  "autocmd! *
  "autocmd FileType fern call s:init_fern()
"augroup END

" tab control
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" ---- Markdown ----
let g:instant_markdown_autostart = 0

" ---- Snippets ----
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<C-Space>"
" ---- Auto Save ---
let g:auto_save = 1  " enable AutoSave on Vim startup

" set UTF-8 encoding
set encoding=UTF-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" use indetation of previous line
"set autoindent
" use intelligent indentation for C
"set smartindent

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set shiftwidth=2
"set softtabstop=2
au FileType python setlocal tabstop=4 shiftwidth=4
au FileType bazel setlocal tabstop=4 shiftwidth=4
au FileType bzl setlocal tabstop=4 shiftwidth=4
" when indenting with '>', use 2 spaces width

" wrap lines at 120 chars
set textwidth=120

" y and d put stuff into system clipboard (so that other apps can see it)
set clipboard=unnamed,unnamedplus

" prevent generating swap files
set noswapfile

" backspace settings
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set lazyredraw

" Linebreak on 500 characters
set lbr
set tw=500

set updatetime=300

" ---- ColorScheme ----
syntax on
set t_Co=256
set bg=dark
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set termguicolors
colorscheme xoria256 
"let g:airline_theme='onehalfdark'
" disable hightlight row when entering insert mode
:autocmd InsertEnter,InsertLeave * set cul!

set guifont=HackNerdFont

" ---- Open new split to right/ bottom
set splitright
set splitbelow
set foldlevel=20

" folding
set foldmethod=indent

" turn line numbers on
set number

" highlight search result
set hlsearch

" automatically update changed files
set autoread

" turn cursorline
highlight CursorLineNr cterm=bold ctermfg=red
set cursorline

" resize window split
nnoremap 9 :vertical resize +5 <CR>
nnoremap 8 :vertical resize -5 <CR>

" jump to start/end of a line
nnoremap 1 ^
nnoremap 2 $
vnoremap 1 ^
vnoremap 2 $

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" switch buffers
map <C-Right> :bnext <CR>
map <C-Left> :bprevious <CR>
map <C-D> :bdelete<CR>

" delete operations
nnoremap d1 d0 
nnoremap d2 d$

" switch between header/source with F4
map <F5> :e %:p:s,.h$,.X123X,:s,src/.cpp$,.h,:s,.X123X$,src/.cpp,<CR>

" map Esc in terminal mode to return to Normal mode
tnoremap <Esc> <C-\><C-n>
"nnoremap <F5> :wa<CR>:vertical botright term ++kill=term<CR>

" ---- NERD TREE ---
"" open/switch to nerdtree
"map <F3> :NERDTreeFocus<CR>
"" toggle nerdtree
"map <F2> :NERDTreeToggle<CR>
"" refresh nerdtree
"nnoremap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>
"" nerdtree search
"nnoremap <C-f> :NERDTreeFind<CR>

"" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

"" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    "\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

set ma 
" make NERDTree open a file where the cursor was last
set hidden

" ---- auto matching brackets ----
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha

" ---- make cursor thin ----
" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" ---- shift+arrow selection ---- NOTE: this is not working in tmux
set keymodel=startsel,stopsel

" ---- endline in normal mode ----
nmap <Enter> O<Esc>j
"nnoremap <Enter> j<Enter><Esc>k

" ---- Grepper -----
nnoremap <leader>g :Grepper -tool git<cr>

" ---- Vim Section Management ----
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "yes"
let g:session_command_aliases = 1

" ---- Indent visualization ----
let g:markdown_syntax_conceal=0
" used to toogle indent lines before copying
map <C-i> :IndentLinesToggle <CR>
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
"hi IndentGuidesOdd  ctermbg=236
"hi IndentGuidesEven  ctermbg=237

augroup illuminate_augroup
  autocmd!
  autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END

" ---- vim-gitgutter ----
let g:gitgutter_set_sign_backgrounds = 1
highlight SignColumn guibg=black ctermbg=1

" ---- vim-smoothie ----
let g:smoothie_no_default_mappings = 1
nnoremap <unique> <C-Down> <cmd>call smoothie#do("\<C-D>") <CR>
vnoremap <unique> <C-Down> <cmd>call smoothie#do("\<C-D>") <CR>
nnoremap <unique> <C-Up> <cmd>call smoothie#do("\<C-U>") <CR>
vnoremap <unique> <C-Up> <cmd>call smoothie#do("\<C-U>") <CR>

" ---- AutoReload when switching ----
au FocusLost,WinLeave * :silent! noautocmd w

" ---- Tagbar ----
nmap <F8> :TagbarToggle<CR>

" ---- Yaml ----
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

"---- Spell checking ---
"map <leader>ss :setlocal spell!<cr> 
