""
"" Basic Setup
""
call pathogen#infect() " Use pathogen to manage runtime path/plugins
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax on             " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
"colorscheme solarized
colorscheme vwilight
set background=light  " Seems backwards, but looks better to me in terminal
set lines=35
set columns=120
set laststatus=2      " keep the status line on
set statusline=\ %f%m%r%h%w%<\ %{&ff}\ %Y\ %{fugitive#statusline()}\ %=%L\ lines\ %l,%v\ %p%%\ 
"set guifont=Monaco:h13
set guifont=Menlo\ Regular:h15
filetype plugin indent on

""
"" Whitespace
""
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
let mapleader="," " map leader to , instead of \
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>
" Map <leader>w to 'remove all trailing whitespace'

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Searching
""
"set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Wild settings
""
" TODO: Investigate the precise meaning of these settings
" set wildmode=list:longest,list:full

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""
set backupdir=~/.vim/_backup/    " where to put backup files.
set directory=~/.vim/_temp/      " where to put swap files.

""
"" Task List
""
map <leader>td <Plug>TaskList

""
"" PEP8 for Python
""
let g:pep8_map='<leader>8'
""
"" Exuberant CTags
""
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>
