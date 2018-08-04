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
"   -> Pathogen : https://github.com/tpope/vim-pathogen.git
"   -> SuperTab : https://github.com/ervandew/supertab.git
"   -> Emmet-vim : https://github.com/mattn/emmet-vim.git
"   -> GitGutter : https://github.com/airblade/vim-gitgutter.git
"   -> CtrlP : https://github.com/kien/ctrlp.vim.git
"   -> Syntastic : https://github.com/vim-syntastic/syntastic.git
"   -> Auto-Pairs : https://github.com/jiangmiao/auto-pairs.git
"   -> Tagbar : https://github.com/majutsushi/tagbar.git
"   -> NerdCommenter : https://github.com/scrooloose/nerdcommenter.git
"   -> AutoComplPop : https://github.com/othree/vim-autocomplpop.git
"   -> UndoTree : https://github.com/mbbill/undotree.git
"   -> NerdTree : https://github.com/scrooloose/nerdtree.git
"   -> vim-airline : https://github.com/vim-airline/vim-airline.git
"   -> vim-latex : https://github.com/vim-latex/vim-latex.git
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
" needs using Tab
" --------------------------------------------------------------
" Set Ctrl + P to go forward (previous) and Ctrl + N to
" go backward (next)
let g:SuperTabMappingForward  = "<C-P>"
let g:SuperTabMappingBackward = "<C-N>"

" Enable SuperTab longest match support
let g:SuperTabLongestEnhanced = 1


" --------------------------------------------------------------
" -> Emmet-vim
"
" Emmet-vim provides support for expanding abbreviations
" especially for HTML, CSS and JS
" --------------------------------------------------------------
" Enable emmet expansion in all modes
let g:user_emmet_mode = "a"

" Redefine emmet trigger key to Ctrl + E
let g:user_emmet_leader_key = "<C-E>"


" --------------------------------------------------------------
" -> GitGutter
"
" Display a git diff in the gutter (sign column) and stage
" or undo hunks
" --------------------------------------------------------------
" Set the display update time
set updatetime=800

" Map ,gd to toggle gitgutter
nmap <silent> <leader>gd :GitGutterToggle<CR>

" Map ,gl to toggle line highlight
nmap <silent> <leader>gl :GitGutterLineHighlightsToggle<CR>


" --------------------------------------------------------------
" -> CtrlP
"
" Full path fuzzy file/buffer/mru/tag finder
" --------------------------------------------------------------
" Map Ctrl + P to invoke CtrlP
let g:ctrlp_map = "<C-P>"
let g:ctrlp_cmd = "CtrlP"

" Use Ctrl + B to invoke CtrlP find in buffer
nmap <C-B> :CtrlPBuffer<CR>

" Use Ctrl + M to invode CtrlP find in MRU
nmap <C-M> :CtrlPMRU<CR>

" Use Ctrl + A to invoke CtrlP find in all
nmap <C-A> :CtrlPMixed<CR>

" Set CtrlP maximum window height
let g:ctrlp_max_height = 12

" Ignore several file types when using CtrlP
let g:ctrlp_custom_ignore = "node_modules\|\.DS_Store\|\.git"

" Set CtrlP working directory to be the directory of the
" current file
let g:ctrlp_working_path_mode = "ra"

" If a file is already open, open it again in a new panel
let g:ctrlp_switch_buffer = "et"


" --------------------------------------------------------------
" -> Syntastic
"
" Syntax checking hacks for VIM
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
" Insert or delete brackets, parens and quotes in pairs
" --------------------------------------------------------------
" Disable fly mode
let g:AutoPairsFlyMode = 0


" --------------------------------------------------------------
" -> Tagbar
"
" VIM plugin to display tags in a window ordered by scope
" --------------------------------------------------------------
" Map F7 to toggle tagbar
nmap <F7> :TagbarToggle<CR>

" Set the width of the tagbar window to 32
let g:tagbar_width = 32


" --------------------------------------------------------------
" -> NerdCommenter
"
" VIM plugin for intensely orgasmic commenting
" --------------------------------------------------------------
" Map Ctrl + C to toggle comment
nmap <C-C> <leader>c<space>

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
" Automatic completion popup menu for VIM
" --------------------------------------------------------------
" Set up acp for snipMate plugin
let g:acp_behaviorSnipmateLength = 1

" Disable auto-popup when moving cursor in insert mode
let g:acp_mappingDriven = 1


" --------------------------------------------------------------
" -> UndoTree
"
" The ultimate undo history visualizer for VIM
" --------------------------------------------------------------
" Map F5 to toggle the undotree window.
nmap <F5> :UndotreeToggle<CR>

" Set the width of the undotree window
let g:undotree_SplitWidth = 32

" Set the height of the diff window
let g:undotree_DiffpanelHeight = 12

" When undotree is opened, set focus on undotree windows
let g:undotree_SetFocusWhenToggle = 1

" Use shorter timestamps indicator
let g:undotree_ShortIndicators = 1


" --------------------------------------------------------------
" -> NerdTree
"
" A visualized tree explorer plugin for VIM
" --------------------------------------------------------------
" Map F6 to toggle the NERDTree window
nmap <F6> :NERDTreeToggle<CR>

" Map ,nf to nerdtree find
nmap <leader>nf :NERDTreeFind<CR>

" Set nerdtree window size
let g:NERDTreeWinSize = 32

" Let nerdtree show hidden files
let g:NERDTreeShowHidden = 1

" Close VIM when NERDTree window is the last window
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" --------------------------------------------------------------
" -> vim-airline
"
" Lean and mean status/tabline for VIM that is light as air
" --------------------------------------------------------------
" Set vim airline style
let g:airline_theme = "dark"

" Enable display of all buffers when there is only one window
let g:airline#extensions#tabline#enabled = 1


" --------------------------------------------------------------
" -> vim-latex
"
" Enhanced LaTeX support for VIM
" --------------------------------------------------------------
" IMPORTANT: grep will sometimes skip displaying the file name
" if you search in a singe file. This will confuse Latex-suite
" Set your grep program to always generate a filename
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting from VIM 7, the filetype of empty .tex
" files defaults to 'plaintex' instead of 'tex', which results
" in vim-latex not being loaded
" The following changes the default filetype back to 'tex':
let g:tex_flavor = "latex"
