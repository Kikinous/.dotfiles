" TODO_LIST: {{{1
" Urgent {{{2
"
" Important {{{2
"
" Interessants {{{2
" vimcast
" vim hard way

" VUNDLE PLUGIN MANAGER: {{{1
" Setup vundle  {{{2
" ------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle commands {{{2
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginUpdate     - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" PATHOGEN PLUGIN MANAGER: {{{1
" Install {{{2
execute pathogen#infect()
"
"
" plugin: YouCompleteMe {{{2

" plugin: ctrl space {{{2
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

" Plugin: plugin d'indentation {{{2
" --------------------------------
"autocmd VimEnter * IndentGuidesToggle
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=234  "molokai
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235  "molokai
autocmd VimEnter,BufWinEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black       "solarized dark
autocmd VimEnter,BufWinEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey    "solarized dark

" Plugin: Tabular {{{2
" alignement des & dans tabular de LaTeX :
" '<,'>Tabularize /&

" Plugin: Gundo {{{2
" undo tree in style
nnoremap <leader>u :GundoToggle<CR>

" FILES: {{{1
" Settins {{{2
" Search down into subfolder
" provides tab-completion for all files-related task
" :b substring --> ouvre le bon buffer
set path+=**                                     " recursive subdirectory
filetype indent on                                   " file specific indent
" doc {{{2
" https://www.youtube.com/watch?v=XA2WjJbmmoM&list=PL8tzorAO7s0jy7DQ3Q0FwF3BnXGQnDirs
" hit tab to :find by partial match
" use * to make it fuzzy

" PYTHON: {{{1
" Python setting {{{2
let python_highlight_all=1
" Python doc {{{2
" PEP8 indentation
"au BufNewFile,BufRead *.py
"     set tabstop=4
"     set softtabstop=4
"     set shiftwidth=4
"     set textwidth=79
"     set expandtab
"     set autoindent
"     set fileformat=unix

" SNIPPETS: {{{1
" SNIPPETS LaTeX {{{2
augroup Snippet_Latex
autocmd!
autocmd FileType tex  nnoremap <leader>tabular  :-1read $HOME/.vim/snippets/LaTeX/tabular.tex<CR>
autocmd FileType tex  nnoremap <leader>template :-1read $HOME/.vim/snippets/LaTeX/template.tex<CR>
autocmd FileType tex  nnoremap <leader>graphics :-1read $HOME/.vim/snippets/LaTeX/graphics.tex<CR>
autocmd FileType tex  nnoremap <leader>tikz     :-1read $HOME/.vim/snippets/LaTeX/tikz.tex<CR>
autocmd FileType make nnoremap <leader>makefile :-1read $HOME/.vim/snippets/LaTeX/makefile<CR>
augroup END


" SEARCH: {{{1
" settings {{{2
set hlsearch                                     " Highlight searches
set incsearch                                    " highlight next matches
set showmatch                                    " highlight matching [{()}]
set ignorecase                                   " Use case insensitive search, except when using capital letters
set smartcase
" doc {{{2
" :noh                                           " stop highlighting

" DISPLAY_OPTION: {{{1
" settings {{{2
set encoding=utf-8
set wrap                                         " wrap lines longer than window
set linebreak                                    " wrap lines at proper ('breakat') character
let &showbreak='↪'                               " symbol showing line have been wrapped
" set shiftwidth=4
set softtabstop=4                                " number of spaces in tab when editing
set expandtab                                    " tabs are spaces
set tabstop=4                                    " number of visual spaces when editing
set autoindent                                   " When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on. Useful for READMEs, etc.
set backspace=indent,eol,start                   " Allow backspacing over autoindent, line breaks and start of insert action
set nostartofline                                " Stop certain movements from always going to the first character of a line.
"set colorcolumn=120                             " Marque la 120eme colonnes
set textwidth=119                                " textwidth for
autocmd BufEnter,InsertChange * 2mat ErrorMsg '\%121v.'
" doc {{{2
" noh                                            " clean search highlights

" MAPPING: {{{1
" Plugins {{{2
let mapleader= ","
nmap <F2> :call Flake8()<CR>
nmap <F3> :NumbersToggle<CR>
nmap <F4> :set invnumber<CR>
nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :IndentGuidesToggle<CR>
nmap <F9> :TagbarToggle<CR>

" Leader {{{2
nnoremap <Leader>trailing /\s\+$/<CR>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>ez :e ~/.zshrc<CR>
nnoremap <Leader>et :e ~/.tmux.conf<CR>
"
"
" keys {{{2
" :verbose map <key>                             " what <key> is mapped to ?
inoremap jk <esc>
vnoremap jk <esc>
"nnoremap <c-i> :tag<CR>                         " MARCHE PAS
noremap <Leader><space> :nohlsearch<CR>          " turn off search highlight
map Q <Nop>                                      " unmap ex mode: 'Type visual to go into Normal mode.

" Anti-erreurs {{{2
nnoremap Q <nop>
" doc {{{2
" :map                                           " list all mapppings

" AUTOCOMMANDS: {{{1
" Settings: {{{2
"Pour la coloration syntaxique Arduino
"autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
augroup TipeDeFichier                            " avoid duplicating autocommand (en faisant :so .vimrc p.ex.)
"       autocmd!                                 " clear the group
"       autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp                             " remplacé par .vim/ftdetect/arduino.vim
        autocmd BufNewFile,BufReadPost *.ldg highlight ExtraWhitespace ctermbg=red guibg=red    "show whitespace in ledger file
        autocmd BufNewFile,BufReadPost *.ldg match ExtraWhitespace /\s\+$/
augroup END

" Trailing_space {{{2
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
set cursorline                       " highlight current line
set clipboard=unnamed                " use the system clipboard
set ttymouse=xterm2                  " to get the mouse working with Iterm2

" COLOR: {{{1
" settings {{{2
syntax enable                                    " enable / noenable
if filereadable(expand("~/.vimrc_background"))
        let base16colorspace=256
        source ~/.vimrc_background               " la cmd base16_monokai change ce fichier et vim s'ajuste
endif
" GENERAL_CONFIGURATION: {{{1
" doc {{{2
" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.
let bonjour = "Pauffiner le vimrc"
"echom bonjour                                   " message d'acceuil
"silent echom bonjour                            " silent = pour eviter le prompt
"
" Imperatif {{{2
set nocompatible                                 " Set 'nocompatible' to ward off unexpected things that your distro might have made, as well as sanely reset options when re-sourcing .vimrc
" Attempt to determine the type of a file based on its name and possibly its contents.
" Use this to allow intelligent auto-indenting for each filetype, and for plugins that are filetype specific.
filetype indent plugin on
syntax on                                        " Enable syntax coloring

" Recommandées {{{2
" ======================
"
" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall
set wildmenu                                     " visual autocomplete for command menu
set showcmd                                      " Show partial commands in the last line of the screen
" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline

" Utiles {{{2
" ===========
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
set ruler                                        " Display the cursor position on the last line of the screen or in the status line of a window
"set laststatus=2                                " Always display the status line, even if only one window is displayed
set confirm                                      " instead raise a dialogue asking if you wish to save an changed but unsaved files.
set visualbell                                   " Use visual bell instead of beeping when doing something wrong
set t_vb=                                        " And reset the terminal code for the visual bell. If visualbell is set, and this line is also included, vim will neither flash nor beep. If visualbell is unset, this does nothing.
set mouse=a                                      " Enable use of the mouse for all modes
"set cmdheight=2                                 " Set command window to 2 lines => avoid to press <Enter> to continue
set notimeout ttimeout ttimeoutlen=200           " Time out on keycodes, but never time out on mappings
set pastetoggle=<F11>                            " Use <F11> to toggle between 'paste' and 'nopaste'
set lazyredraw                                   " redraw only when needed => faster macro

" FOLDING: {{{1
" setings {{{2
set foldenable
set foldmethod=marker                            " indent, marker, indent, expr, syntax, diff
set foldlevelstart=0                             " if sets to 0, all folds will be closed
"set foldtext=foldtext()                         " default value
set fillchars=vert:\|,fold:\                     " characteres du textfold
set foldtext=MaFonctionDeFolding()
function! MaFonctionDeFolding()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  return v:folddashes . sub
endfunction
" doc {{{2
" zo --> Open
" sc --> Close
" zv --> unflod at cursor
" za --> toggle folding
"
" zr --> Fold reduce
" zR --> Fold reduce max
" zm --> fold more
" zM --> fold more max
"
" Nb colonne a gauche
set foldcolumn=0
"set foldnestmax=10
"set fde=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1
"set fdm=expr
" SPELLING: {{{1
" settings {{{2
set spell
set spelllang=fr spell
" doc {{{2
" z= : mode choix
" zg : ajoute d'un mot dans le dictionnaire local
" zG : ajoute d'un mot dans le dictionnaire global
" ]s : mot suivant
" [s : mot précédent
" CTRL+X puis "s" : liste de proposition en mode INSECTRL+X puis "s"RT

" BUFFERS: {{{1
" settings {{{2
"
" doc {{{2
" :ls                                            " (a=actif ; h=hiden)
" :hide                                          " hide buffer
" :close                                         " close window
" :n                                             " new blank buffer
" :bd                                            " buffer delete
" :bd k l m                                      " buffer delete k l et m
" :3,5bd                                         " buffer delete 3 à 5
" WINDOW: {{{1
" " settings {{{2
" un buffer peut être caché en memoire mais pas affiché
set hidden
"
" doc {{{2
" <c-w>{s,v}     horizontal,vertical spilt
" :split or :vsplit
" :hide ou :close
" :only
" <c-w>{h,j,k,l} move cursor
" <c-w>{H,J,K,L} move window
" <c-w>c         close
" <c-w><c-w>     toggle active window
" TABS: {{{1
" " settings {{{2
"
" doc {{{2
" <c-w>{s,v}     horizontal,vertical spilt
" gt || gT       next || prior tab
" :close
" :tabe
" <C-w>T         move split to new tab


