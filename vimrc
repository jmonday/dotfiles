set nocompatible          " Get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " Filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " Enable 256-color mode.
syntax enable             " Enable syntax highlighting (previously syntax on).
colorscheme slate         " Set colorscheme
set number                " Show line numbers
set laststatus=2          " Last window always has a statusline
filetype indent on        " Activates indenting for files
set cursorline            " Highlight the current line
set hlsearch              " Highlight search phrases
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " Auto-indent
set tabstop=4             " Tab spacing
set softtabstop=4         " Unify
set shiftwidth=4          " Indent/outdent by 4 columns
set shiftround            " Always indent/outdent to the nearest tabstop
set expandtab             " Use spaces instead of tabs
set smarttab              " Use tabs at the start of a line, spaces elsewhere
set nowrap                " Don't wrap text
