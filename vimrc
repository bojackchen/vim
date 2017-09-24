" -----------------------------------------------------------------
" Author: CHEN Feng
" Description: My personal vim configuration file
"
"-----------------------------------------------------------------
"
"-----------------------------------------------------------------
" Start of the vimrc file
"
"-----------------------------------------------------------------



" ----------------------------------------------------------------
" Features
"
" These options enable many features in Vim, that no user will
" live without.
"
" ----------------------------------------------------------------
"
" Ward off unexpected things that my distro may have, as well
" as sanely reset options when re-source .vimrc.
" Use Vim settings rather than Vi settings.
" This must be the first, cause it will change other options
" as a side effect.
set nocompatible

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Determine the file type base on its name and possibly its
" content, allowing for intelligent indent and plugins that
" are filetype specific.
filetype plugin indent on
filetype plugin on
filetype indent on

" Enable syntax highlighting.
syntax on

" In many terminal emulators the mouse works just fine, thus
" enable it for convenience.
if has('mouse')
    set mouse=a
endif

" Ignore case for Ctrl-N
set ignorecase



"-----------------------------------------------------------------
" Must have options
"
" These options are highly recommended.
"
"-----------------------------------------------------------------
"
" When opening a new line and no filetype specific indent is
" enabled, keep the same indent as the line you are currently
" on. Useful for READMEs, for example.
set autoindent

" Better command line completion
set wildmenu

" Display the cursor position on the last line of the screen or
" in the status line of the window.
set ruler

" Display line number on the left.
set number

" Display incomplete commands.
set showcmd

" Highlight search results.
set hlsearch



"-----------------------------------------------------------------
" Indentation options
"
" These options are set upon personal preferences, to make a
" better indentation of your code.
"
"-----------------------------------------------------------------

" Indentation settings for using 4 spaces to replace tabs.
" Do not change 'tabstop' from its default value of 8 to 4.
set shiftwidth=2
set softtabstop=2
set expandtab



"-----------------------------------------------------------------
" Usability options
"
" These options enhance the usability of Vim. Set up your
" personal preferences here.
"
"-----------------------------------------------------------------
"
" Stop certain movements from always going to the first
" character of a line.
set nostartofline

" Always display the status line, even if only one window is 
" displayed.
set laststatus=2

" Display file name and line number in the status line.
set statusline=%F\ %y:\ %l/%L\ %c\ %P

" Set the command window height to 2 lines, to avoid many cases
" of having to 'Press <Enter> to continue'.
set cmdheight=2

" Backup settings.
set nobackup

" No swap file.
set noswapfile

" Keep 50 lines of command line history
set history=50

" Paste for insert mode.
set pastetoggle=<f2>

" Add dictionary to Vim to enable the auto
" completion of words.
" Ctrl-X + Ctrl-K to wake up the autocompletion of words
" in the dictionary.
set dictionary+=/usr/share/dict/words



"-----------------------------------------------------------------
" Mappings
"
" These options are useful mappings for efficient editing.
"
"-----------------------------------------------------------------
"
" Map ,e to edit the vimrc file.
nnoremap ,e :e ~/.vim/vimrc<CR>

" Map ,f to close the file without saving.
map ,f :q!<CR>

" Map ,z to create fold based on indent.
map ,z :set foldmethod=indent<CR>

" Map ,ss to start spell check.
map ,ss :setlocal spell!<CR>

" Switch between buffers with unsaved changed.
set hidden
" Map Shift-Tab to go to previous buffer.
map <s-tab> :bp<CR>
" Map Tab to go to next buffer.
map <tab> :bn<CR>

" Map <Space> to open and close fold in file.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>



"-----------------------------------------------------------------
" Autocmds
"
" Auto commands. Commands that will be executed automatically or
" triggered by certain conditions.
"
"-----------------------------------------------------------------
"
" When vimrc is modified, reload it.
autocmd! bufwritepost vimrc source ~/.vim/vimrc



"-----------------------------------------------------------------
" Personal plugins
"
" These plugins are configured personally, which greatly enhance
" the efficiency of using Vim.
"
"-----------------------------------------------------------------
"
" Doorkeeper of all my vim plugins.
" Pathogen is a vim plugin manager.
call pathogen#infect()



"-----------------------------------------------------------------
" taglsit plugin
"
" Create tags according to the file.
"
"-----------------------------------------------------------------
"
" Map F8 to toggle taglist.
nnoremap <f8> :TlistToggle<CR>

" Always show taglist on the right of the main window.
let Tlist_Use_Right_Window=1

" Close taglist window if it is the only window.
let Tlist_Exit_OnlyWindow=1



"-----------------------------------------------------------------
" tagbar plugin
"
" Create tags according to the file. Similar to taglist.
"
"-----------------------------------------------------------------
"
" Map F9 to toggle taglist.
nnoremap <f9> :TagbarToggle<CR>

" Set the width of tagbar window to 30
let g:tagbar_width=30



"-----------------------------------------------------------------
" tComment plugin
"
" Use <c-c> to comment and uncomment.
"
"-----------------------------------------------------------------
"
" Use Ctrl-C to comment and uncomment.
map <c-c> gcc



"-----------------------------------------------------------------
" acp plugin
"
" AutoCompletionPopup for Vim.
"
"-----------------------------------------------------------------
"
" Set acp for snippets.
let g:acp_behaviourSnipmateLength=1



"-----------------------------------------------------------------
" NERDTree plugin
"
" NERDTree file explorer plugin.
" 
"-----------------------------------------------------------------
"
" Map f7 to toggle the NERDTree window.
map <f7> :NERDTreeToggle<CR>



"-----------------------------------------------------------------
" vim-latex-suite plugin
"
" latex-suite for vim.
" 
"-----------------------------------------------------------------
"
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
    
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'



"-----------------------------------------------------------------
" End of the vimrc file.
"
"-----------------------------------------------------------------
