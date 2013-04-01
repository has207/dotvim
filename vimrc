filetype off
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible               " be iMproved

filetype plugin indent on  " Automatically detect file types.

" ---------------
" Color
" ---------------
set background=dark
if &t_Co == 256 && ! has("gui_running")
  colorscheme pastel_black_256
else
  colorscheme default
endif

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler  " Ruler on
set nu     " Line numbers on
set wrap   " Line wrapping on
set laststatus=2  " Always show the statusline
set cmdheight=2

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set autowrite          " Writes on make/shell commands
set timeoutlen=250     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql
set autochdir

" ---------------
" Text Format
" ---------------
set ts=2
set bs=2 " Delete everything with backspace
set shiftwidth=2  " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set mat=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed

" ----------------------------------------
" Bindings
" ----------------------------------------

map <F1> <Esc>
imap <F1> <Esc>

" ---------------
" Leader
" ---------------

" Set leader to ,
let mapleader=","

nmap <silent> <leader>s :set spell!<CR>
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>

" ---------------
" Scrolling
" ---------------

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

  " Source the vimrc file after saving it
  autocmd bufwritepost vimrc source $MYVIMRC
endif
" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Gundo
" ---------------
let g:gundo_right = 1
nnoremap <leader>u :GundoToggle<CR>

" ---------------
" SuperTab
" ---------------
let g:SuperTabDefaultCompletionType="context"

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_mode_map={ 'mode': 'active',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': ['java', 'cpp'] }

" ---------------
" FuzzyFinder
" ---------------
let g:fuf_modesDisable=['mrucmd'] " Enables FufMruFile
nnoremap <leader>ff :FufFile<CR>
nnoremap <leader>fm :FufMruFile<CR>
nnoremap <leader>j :FufBuffer<CR>

" ---------------
" NERDTree
" ---------------
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent=3
let g:indent_guides_start_level=3
let g:indent_guides_indent_levels=5

" ---------------
" Session
" ---------------
let g:session_autosave=0
let g:session_autoload=0

" ---------------
" status.vim
" ---------------
let g:statusline_fugitive=1
let g:statusline_fullpath=0
" Everything must be after Right Separator for BufStat
let g:statusline_order=[
      \ 'Filename',
      \ 'Encoding',
      \ 'Help',
      \ 'Filetype',
      \ 'Modified',
      \ 'Fugitive',
      \ 'RVM',
      \ 'TabWarning',
      \ 'Syntastic',
      \ 'Paste',
      \ 'ReadOnly',
      \ 'RightSeperator',
      \ 'CurrentHighlight',
      \ 'CursorColumn',
      \ 'LineAndTotal',
      \ 'FilePercent']

" ---------------
" Taglist
" ---------------
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1

" ---------------
" Screen
" ---------------
let g:ScreenImpl = 'Tmux'
let g:ScreenShellHeight = 7
let g:ScreenShellTmuxInitArgs = '-2'
let g:ScreenShellInitialFocus = 'shell'
let g:ScreenShellQuitOnVimExit = 0

" ----------------------------------------
" Shortcuts
" ----------------------------------------

" Toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" ---------------
" Other stuff
" ---------------

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red

autocmd BufNewFile,BufRead *.proto set filetype=proto
autocmd BufNewFile,BufRead *.borg set filetype=borg
autocmd BufNewFile,BufRead *.gcl set filetype=gcl

" Open up grep results in a quickfix window
autocmd QuickFixCmdPost *grep* cwindow
