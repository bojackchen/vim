" --------------------------------------------------------------
" Author: Bojack F. CHEN
"
" Description: This is the plugin part of my VIM configuration.
" All the plugins are loaded and configured here. Plugin
" management is based on pathogen by tpope.
" repo - https://github.com/tpope/vim-pathogen.git
"
" Github repository: https://github.com/bojackchen/vim.git
"
" Personal page: https://bojackchen.github.io
"
"
" Sections:
"   -> Pathogen
"   -> SuperTab
"   -> GitGutter
"   -> CtrlP
"   -> Syntastic
"   -> Auto-Pairs
"   -> Tagbar
"   -> NerdCommenter
"   -> AutoComplPop
"   -> UndoTree
"   -> NerdTree
"   -> vim-airline
"   -> vim-latex
"
" --------------------------------------------------------------


" --------------------------------------------------------------
" -> Pathogen
"
" Call pathogen and load all the plugins
" --------------------------------------------------------------
call pathogen#infect()


" --------------------------------------------------------------
" -> SuperTab
"
" SuperTab allows you to perform all your insert completion
" using <tab>
" --------------------------------------------------------------
" Set Ctrl + p to go forward (previous) and Ctrl + n to
" go backward (next)
let g:SuperTabMappingForward  = "<C-p>"
let g:SuperTabMappingBackward = "<C-n>"

" Enable SuperTab longest match support
let g:SuperTabLongestEnhanced = 1


" --------------------------------------------------------------
" -> GitGutter
"
" Display the diff in git repository in real time
" --------------------------------------------------------------
" Set the display update time
set updatetime=800

" Map ,d to toggle gitgutter
noremap <silent> <leader>d :GitGutterToggle<CR>


" --------------------------------------------------------------
" -> CtrlP
"
" Full path fuzzy file/buffer/mru/tag finder
" --------------------------------------------------------------
" Map Ctrl + p to invoke CtrlP
let g:ctrlp_map = "<C-p>"
let g:ctrlp_cmd = "CtrlP"

" CtrlP buffer
map <C-b> :CtrlPBuffer<CR>

" Set CtrlP maximum window height
let g:ctrlp_max_height = 16

" Ignore several file types when using CtrlP
let g:ctrlp_custom_ignore = "node_modules\|\.DS_Store\|\.git"

" Set CtrlP working directory to be the directory of the
" current file
" let g:ctrlp_working_path_mode = "ra"

" If a file is already open, open it again in a new panel
" let g:ctrlp_switch_buffer = "et"


" --------------------------------------------------------------
" -> Syntastic
"
" Syntax checking for codes
" --------------------------------------------------------------
" Add information to the status line
set statusline +=%#warningmsg#
set statusline +=%{SyntasticStatuslineFlag()}
set statusline +=%*

" Set syntax check options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 0


" --------------------------------------------------------------
" -> Auto-Pairs
"
" Auto close paired brackets
" --------------------------------------------------------------
" Disable fly mode
let g:AutoPairsFlyMode = 0


" --------------------------------------------------------------
" -> Tagbar
"
" Create tags based on the file and list the tags out
" --------------------------------------------------------------
" Map <F7> to toggle tagbar
noremap <F7> :TagbarToggle<CR>

" Set the width of the tagbar window to 32
let g:tagbar_width = 32


" --------------------------------------------------------------
" -> NerdCommenter
"
" Easy comment plugin for VIM
" --------------------------------------------------------------
" Map Ctrl + c to toggle comment
noremap <C-c> <leader>c<space>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left
let g:NERDDefaultAlign = "left"

" Enable trimming of trailing white space when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" --------------------------------------------------------------
" -> AutoComplPop
"
" Auto completion popup (acp) for VIM
" --------------------------------------------------------------
" Set up acp for snipMate plugin
let g:acp_behaviorSnipmateLength = 1

" Disable auto-popup when moving cursor in insert mode
let g:acp_mappingDriven = 1


" --------------------------------------------------------------
" -> UndoTree
"
" Undo operations tree
" --------------------------------------------------------------
" Map F5 to toggle the undotree window.
nnoremap <F5> :UndotreeToggle<CR>

" When undotree is opened, set focus on undotree windows
let g:undotree_SetFocusWhenToggle = 1


" --------------------------------------------------------------
" -> NerdTree
"
" NerdTree file explorer plugin
" --------------------------------------------------------------
" Map F6 to toggle the NERDTree window
nnoremap <F6> :NERDTreeToggle<CR>

" Map ,nf to nerdtree find
nnoremap <leader>nf :NERDTreeFind<CR>

" Set nerdtree window size
let g:NERDTreeWinSize = 32

" Let nerdtree show hidden files
let g:NERDTreeShowHidden = 1

" Close VIM when NERDTree window is the last window
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" --------------------------------------------------------------
" -> vim-airline
"
" Powerful VIM statusline style
" --------------------------------------------------------------
" Set vim airline style
let g:airline_theme = "dark"


" --------------------------------------------------------------
" -> vim-latex
"
" Latex-suite for VIM.
" --------------------------------------------------------------
" IMPORTANT: grep will sometimes skip displaying the file name
" if you search in a singe file. This will confuse Latex-suite
" Set your grep program to always generate a filename
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting from VIM 7, the filetype of empty .tex
" files defaults to "plaintex" instead of "tex", which results
" in vim-latex not being loaded
" The following changes the default filetype back to "tex":
let g:tex_flavor = "latex"
