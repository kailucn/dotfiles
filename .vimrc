filetype off

call plug#begin()

" FZF replaces command-t
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
" Like powerline, but lighter
Plug 'itchyny/lightline.vim'
Plug 'majutsushi/tagbar'
" Theme
Plug 'nanotech/jellybeans.vim'
"# "Format code with one button press" - https://github.com/Chiel92/vim-autoformat
" Say no more
Plug 'tpope/vim-fugitive'

" Caddyfile (webserver) syntax
Plug 'joshglendenning/vim-caddyfile'
Plug 'scrooloose/nerdcommenter'

" dired-style file browsing
Plug 'justinmk/vim-dirvish'
" Code completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-jedi'

Plug 'cespare/vim-toml'

" Rust stuff
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

" Plug 'scrooloose/nerdtree'

Plug 'cespare/vim-toml'
Plug 'airblade/vim-gitgutter'

Plug 'sjl/gundo.vim'

call plug#end()

call pathogen#infect()

runtime! init/**.vim

silent! source ~/.vimrc.local
