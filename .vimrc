" Vundle Package manager {{{1
" Setup vundle  {{{2
" ------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle commands {{{2
" --------------------
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

" Pathogen : Plugin Manager {{{1
" Install {{{2
execute pathogen#infect()
" Plugin: ctrl space {{{2
"
let g:airline_exclude_preview = 1
set hidden
set showtabline=0
"let g:ctrlspace_use_tabline

" Plugin: airline (powerline) {{{2
" --------------------------------
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts = 1
"set guifont=Monaco\ for\ Powerline:h10
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h10
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_min_count = 2
"let g:airline#extensions#tabline#show_tabs = 0
"let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#promptline#enabled = 0
"autocmd VimEnter * AirlineToggleWhitespace

" Plugin: ariline - configuration tmux{{{2
" ----------------------------------------
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = {
        \'a'       : ['#h','#S'],
        \'win'     : '#I #W',
        \'cwin'    : '#I #W',
        \'x'       : '#(date "+%a %b %d %Y")',
        \'y'       : '#(date "+%H:%M")',
        \'z'       : '#(pmset -g batt|head -2|tail -1|cut -f2|cut -d ";" -f1)',
        \'options' : {'status-justify' : 'left'}}
"        \'b'       : '#S',
"        \'c'       : '#H',
"        \'x'       : ['%a','%Y'],
"        \'y'       : '%R',
"        \'z'       : '#(pmset -g batt|grep -o "[0-9][0-9]\%")+',
"        \'z'       : '#H',

" Plugin: plugin d'intetation {{{2
" --------------------------------
"autocmd VimEnter * IndentGuidesToggle
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234  "molokai
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235  "molokai
autocmd VimEnter,BufWinEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black       "solarized dark
autocmd VimEnter,BufWinEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey    "solarized dark

" Plugin: markdown file {{{2
" --------------------------
let g:vim_markdown_folding_disabled=1

" Plugin: ledgeriler {{{2
" -----------------------
au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger

" Plugin: Tabularize {{{2
" -----------------------
" alignement des & dans tabular de LaTeX :
" '<,'>Tabularize /&




" Suggestion de my-oh-zsh {{{1
" references {{{2
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
"
" Imperatif {{{2
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
"
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
"
" Enable syntax highlighting
syntax on

" Recommandées {{{2
" ======================
"
" These are highly recommended options.
" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
"
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
"
" Better command-line completion
set wildmenu
"
" Show partial commands in the last line of the screen
set showcmd
"
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline
" j'ai ajoute ca pour faire marcher vim:filetype=ledger
set modelines=1


" Utiles {{{2
" ===========
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
"
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
"
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
"
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
"
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
"
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
"
" Always display the status line, even if only one window is displayed
"set laststatus=2
"
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
"
" Use visual bell instead of beeping when doing something wrong
set visualbell
"
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
"
" Enable use of the mouse for all modes
set mouse=a
"
" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
"set cmdheight=2
"
" Display line numbers on the left
"set number "set nu! pour l'enlever
"
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
"
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


" Indentation {{{2
" Indentation settings according to personal preference.
"
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
"
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
set shiftwidth=4
set tabstop=4



" Python {{{1
" setting {{{2
let python_highlight_all=1
" PEP8 indentation {{{2
"au BufNewFile,BufRead *.py
"     set tabstop=4
"     set softtabstop=4
"     set shiftwidth=4
"     set textwidth=79
"     set expandtab
"     set autoindent
"     set fileformat=unix

" SNIPPETS {{{1
" SNIPPETS LaTeX {{{3
nnoremap ,tabular :-1read $HOME/.vim/snippets/LaTeX/tabular.tex<CR>
nnoremap ,template :-1read $HOME/.vim/snippets/LaTeX/template.tex<CR>
nnoremap ,makefile :-1read $HOME/.vim/snippets/LaTeX/makefile<CR>

" learnvimscriptthehardway.stevelosh.com  {{{1
" 1. Echoing messages {{{3
" ------------------------
echo "Pauffiner le vimrc"

" 6.Leaders {{{3
" --------------
let mapleader= ","

" 7.Editing your vimrc {{{3
" -------------------------
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
inoremap jk <esc>
vnoremap jk <esc>
inoremap <esc> <Nop>
vnoremap <esc> <Nop>
map <C-i> <Nop>

" Dispaly Option {{{1
" settings {{{3
set encoding=utf-8
" pas de retour à la ligne (boolean option)
set nowrap

" Mapping {{{1
" settings{{{3
let mapleader= ","
nmap <F2> :call Flake8()<CR>
nmap <F3> :NumbersToggle<CR>
nmap <F4> :set invnumber<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :IndentGuidesToggle<CR>
nmap <F9> :TagbarToggle<CR>

nnoremap <leader>trailing /\s\+$/<CR>

" Map Y to act like D and C, i.e. eo yank until EOL, rather than act as yy,
" map Y y$
map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>
" unmap ex mode: 'Type visual to go into Normal mode.
nnoremap Q <nop>

" Autocommands {{{1
" Setings: {{{3
"set colorcolumn=80
"Marque la 120eme colonnes
autocmd WinEnter * 2mat ErrorMsg '\%81v.'
"Pour la coloration syntaxique Arduino
"autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
au BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp                             "handle arduino file as cpp file
au BufNewFile,BufReadPost *.ldg highlight ExtraWhitespace ctermbg=red guibg=red    "show whitespace in ledger file
au BufNewFile,BufReadPost *.ldg match ExtraWhitespace /\s\+$/

" Trailing_space {{{2
" Settings: {{{3
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set cursorline                       " highlight current line
set clipboard=unnamed                " use the system clipboard
set ttymouse=xterm2                  " to get the mouse working with Iterm2

" Color {{{1
" settings {{{3
syntax enable
set background=dark
colorscheme solarized
" details {{{3
"color molokai
"set background=light
"let g:solarized_termcolors=256

" Folding {{{1
" setings {{{3
set foldenable
" details {{{3
" zv --> unflod at cursor
" folding method
set foldmethod=marker
" zo --> Open
" sc --> Close
set foldlevelstart=1
" zr --> Fold reduce
" zR --> Fold reduce max
" zm --> fold more
" zM --> fold more max
"
" Nb colonne a gauche
set foldcolumn=4
"set foldnestmax=10
"set fde=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
"set fdm=expr

" Spelling {{{1
" setings {{{3
set spell
set spelllang=fr spell
" details {{{3
" z= : mode choix
" zg : ajoute d'un mot dans le dictionnaire local
" zG : ajoute d'un mot dans le dictionnaire global
" ]s : mot suivant
" [s : mot précédent
" CTRL+X puis "s" : liste de proposition en mode INSECTRL+X puis "s"RT
