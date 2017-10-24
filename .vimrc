" ======== Plugins ======== {
call plug#begin('~/.vim/plugged')

" Airline: https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" NERDTree: https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" EasyMotion: https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'

" Incsearch: https://github.com/haya14busa/incsearch.vim
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" MultipleCursors: https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" Surround: https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" SplitJoin: https://github.com/AndrewRadev/splitjoin.vim
Plug 'AndrewRadev/splitjoin.vim'

" Repeat: https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" AutoPairs: https://github.com/shirohana/auto-pairs
Plug 'shirohana/auto-pairs'

" Commentary: https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" Signature: https://github.com/kshenoy/vim-signature
Plug 'kshenoy/vim-signature'

" BetterWhitespace: https://github.com/ntpeters/vim-better-whitespace
Plug 'ntpeters/vim-better-whitespace'

" FZF: https://github.com/junegunn/fzf.vim
" Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" GitGutter: https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" EasyAlign: https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Undotree: https://github.com/mbbill/undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Emmet https://github.com/mattn/emmet-vim
" Plug 'mattn/emmet-vim'

" MarkdownPreview: https://github.com/JamshedVesuna/vim-markdown-preview
Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }

" YouCompleteMe: https://github.com/Valloric/YouCompleteMe#installation
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" ======== Syntaxs ========
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'
Plug 'hail2u/vim-css3-syntax'
Plug 'wavded/vim-stylus'
Plug 'isRuslan/vim-es6'
Plug 'posva/vim-vue'
" Plug 'leafgarland/typescript-vim'
Plug 'plasticboy/vim-markdown'

" ======== Snippets ========
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
" }

" Starts of plugin settings {

" ======== Airline ========
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0

" ======== NERDTree ========
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeAutoCenter = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', 'yarn\.lock', '\.swp', '\.git$', 'node_modules', '^.nuxt$', 'dist', '.nyc_output', 'coverage']
let g:NERDTreeShowBookmarks = 1
" <M-;> (Option-;)
map …  :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | wincmd p | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | bw # | exe 'NERDTree' argv()[0] | wincmd p | endif

" ======== EasyMotion ========
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
let mapleader = ';'
" map <Leader> <Plug>(easymotion-prefix)

" basic cursor movements
map  <Leader>h  <Plug>(easymotion-linebackward)
map  <Leader>j  <Plug>(easymotion-j)
map  <Leader>k  <Plug>(easymotion-k)
map  <Leader>l  <Plug>(easymotion-lineforward)

" basic words forward/backward
map  <Leader>w  <Plug>(easymotion-w)
map  <Leader>W  <Plug>(easymotion-W)
map  <Leader>b  <Plug>(easymotion-b)
map  <Leader>B  <Plug>(easymotion-B)
map  <Leader>e  <Plug>(easymotion-e)
map  <Leader>E  <Plug>(easymotion-E)
map  <Leader>ge <Plug>(easymotion-ge)
map  <Leader>gE <Plug>(easymotion-gE)

" easymotion in search results
map  <Leader>n  <Plug>(easymotion-n)
map  <Leader>N  <Plug>(easymotion-N)

" replace default word searching
map  s  <Plug>(easymotion-sn)
omap  f  <Plug>(easymotion-fl)
omap  F  <Plug>(easymotion-Fl)
omap  t  <Plug>(easymotion-tl)
omap  T  <Plug>(easymotion-Tl)

" Repeat the last motion
map <CR> <Plug>(easymotion-repeat)

" ======== Incsearch ========
map /   <Plug>(incsearch-easymotion-/)
map ?   <Plug>(incsearch-easymotion-?)
map g/  <Plug>(incsearch-easymotion-stay)
map z/  <Plug>(incsearch-fuzzy-/)
map z?  <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

" ======== MultipleCursors ========
" just using default key mappings
" let g:multi_cursor_use_default_mapping = 0
" let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-b>'
" let g:multi_cursor_skip_key = '<C-x>'
" let g:multi_cursor_quit_key = '<Esc>'

" ======== AutoPairs ========
let g:AutoPairsFlyMode = 1
" re-mapping keys for iTerm2 under MacOS in insert mode
let g:AutoPairsShortcutBackInsert = '∫' " <M-b>
let g:AutoPairsShortcutJump = '∂' " <M-d>

" ======== Commentary ========
" custom file type example
" autocmd FileType apache setlocal commentstring=#\ %s

" ======== BetterWhitespace ========
autocmd BufEnter * EnableStripWhitespaceOnSave

" ======== FZF ========
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g "" --path-to-ignore ~/.vim/.ignore'
let $FZF_DEFAULT_OPTS='--height 20% --reverse --border --multi'
" <M-f> (Option-f)
nmap ƒ :Ag<Space>
nmap <C-o> :Buffers<CR>
nmap <C-p> :Files<CR>

" ======== GitGutter ========
let g:gitgutter_map_keys = 0
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk

" ======== EasyAlign ========
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" ======== Undotree ========
let g:undotree_WindowLayout = 4
nmap U :UndotreeToggle<CR>

if has("persistent_undo")
  set undodir=~/.vim/undofiles/
  set undofile
endif

" ======== Emmet ========
" let g:user_emmet_install_global = 0
" autocmd FileType html,css,xml,php,js,ts EmmetInstall

" ======== MarkdownPreview ========
" grip must be installed (https://github.com/joeyespo/grip)
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<CR>' " It will Override (easymotion-repeat) in markdown

" ======== YouCompleteMe ========
let g:ycm_min_num_of_chars_for_completion = 99 " No annoying
let g:ycm_auto_trigger = 1
let g:ycm_key_invoke_completion = '<C-j>' " Invoke completion explicitly
let g:ycm_key_list_stop_completion = ['<C-y>'] " Close completion window
" Disable preview window
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

" ======== Snippets ========
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

" Ends of plugin settings }

" ======== Tabs ========
" Create a new tab by <S-M-t> (Shift-Option-t)
nmap ˇ :tabnew<CR>
" Move to next tab by <S-M-]> (Shift-Option-])
nmap ’ :tabnext<CR>
" Move to previous tab by <S-M-[) (Shift-Option-[)
nmap ” :tabprevious<CR>
" Close tab by <S-M-q> (Shift-Option-q)
nmap Œ :tabclose<CR>

" ======== Buffers ========
" Allow buffers to be hidden when modified
set hidden
" Create an empty buffer by <M-t> (Option-t)
nmap † :enew<CR>
" Move to next buffer by <M-]> (Option-])
nmap ‘ :bnext<CR>
" Move to previous buffer by <M-[> (Option-[)
nmap “ :bprev<CR>
" Writes and Quits
let mapleader = ','
nmap <leader>w :w<CR>
nmap <leader>q :bp <bar> bw #<CR>
nmap <leader>W :w <bar> bp <bar> bw #<CR>

" ======== Windows ========
" Navigating between windows by <M-[hjkl]> (Option-[hjkl])
nmap ˙ <C-w>h
nmap ∆ <C-w>j
nmap ˚ <C-w>k
nmap ¬ <C-w>l
" Resize window by <M-[,.-=]> (Option-[,.-=])
nmap ≠ 2<C-w>+
nmap – 2<C-w>-
nmap ≤ 3<C-w><
nmap ≥ 3<C-w>>

" ======== General Key-mapping ========
" Instead <Esc> or <C-[>
noremap  <C-l> <Esc>
noremap! <C-l> <Esc>

" Middle the screen when '' or ``
nnoremap '' ''zz
nnoremap `` ``zz

" Insert a line before current line in insert mode
inoremap OO <C-o>O

" Go to Start/End of line in insert mode
inoremap <C-a> <C-o>I
inoremap <C-e> <C-o>A

" Horizontal scrolling
nnoremap zl 8zl
nnoremap zh 8zh

" ======== Theme and Scheme ========
set background=dark
colorscheme solarized
hi! Visual  guifg=White guibg=LightBlue gui=none

" ======== Other custom stuffs ========
set colorcolumn=60,100
set nowrap
set relativenumber
set showcmd
set cursorline

" Use spaces instead tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set hlsearch
set backspace=2
set encoding=utf-8
set scrolloff=2
set foldmethod=syntax
set foldlevelstart=20

set directory=$HOME/.vim/swapfiles//
